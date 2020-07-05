package sweater.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import sweater.demo.Message;
import sweater.demo.User;
import sweater.demo.repository.MessageRepository;

import java.util.Map;

@Controller
public class MainController {

    @Autowired
    private MessageRepository repository;


    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(@RequestParam(required = false,defaultValue = "") String filter, Model model) {
        Iterable<Message> messages = repository.findAll();
        if (filter != null && !filter.isEmpty()) {
            messages = repository.findByTag(filter);
        } else {
            messages = repository.findAll();
        }
        model.addAttribute("messages", messages);
        model.addAttribute("filter", filter);
        return "main";
    }

    @PostMapping("/main")
    public String add(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            @RequestParam String tag, Map<String, Object> model) {
        Message message = new Message(text, tag, user);
        repository.save(message);
        //
        Iterable<Message> outMessages = repository.findAll();
        model.put("messages", outMessages);
        return "main";
    }
}

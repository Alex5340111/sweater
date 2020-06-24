package sweater.demo.repository;

import org.springframework.data.repository.CrudRepository;
import sweater.demo.Message;

import java.util.List;

// This will be AUTO IMPLEMENTED by Spring into a Bean called MessageRepository
// CRUD refers Create, Read, Update, Delete

public interface MessageRepository extends CrudRepository<Message, Long> {
    List<Message> findByTag(String tag);
}

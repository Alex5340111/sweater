package sweater.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import sweater.demo.User;
//https://www.youtube.com/watch?v=WDlifgLS8iQ&list=PLU2ftbIeotGpAYRP9Iv2KLIwK36-o_qYk&index=6&t=364s
public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);
}

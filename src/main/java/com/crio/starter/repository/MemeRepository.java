package com.crio.starter.repository;

import com.crio.starter.data.Meme;
import java.util.List;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MemeRepository extends MongoRepository<Meme,Long>
{
        
   List<Meme> findAllByOrderByIdDesc();
   
        
}

package tap.app.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.Trainer;

public class TrainerRowMapper implements RowMapper<Trainer> {

	@Override
	public Trainer mapRow(ResultSet rs, int rowNum) throws SQLException {

		Trainer trainer = new Trainer();
		trainer.setId(rs.getInt("id"));
		trainer.setFirstName(rs.getString("firstName"));
		trainer.setLastName(rs.getString("lastName"));
		trainer.setEmailId(rs.getString("emailId"));
		trainer.setMobileNo(rs.getString("mobileNo"));
		trainer.setDateOfBirth(rs.getDate("dateOfBirth"));
		trainer.setLanguages(rs.getString("course_name"));
		trainer.setStatus(rs.getString("status"));
		trainer.setAvailability(rs.getBoolean("availability"));
		trainer.setTraineeCount(rs.getInt("traineeCount"));
		trainer.setAvgRating(rs.getInt("avgRating"));
		return trainer;
	}

}

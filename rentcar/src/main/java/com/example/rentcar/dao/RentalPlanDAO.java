
package com.example.rentcar.dao;

import com.example.rentcar.model.RentalPlan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;

import java.util.List;

@Repository
public class RentalPlanDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private RowMapper<RentalPlan> rowMapper = (rs, rowNum) -> {
        RentalPlan plan = new RentalPlan();
        plan.setId(rs.getInt("id"));
        plan.setVehicle_Id(rs.getInt("vehicle_id"));
        plan.setYear(rs.getInt("year"));
        plan.setRegion(rs.getString("region"));
        plan.setModel(rs.getString("model"));
        plan.setPromotion(rs.getString("promotion"));
        plan.setDaily_Price(rs.getDouble("daily_price"));
        plan.setKm_Fee(rs.getDouble("km_fee"));

        Timestamp createdTs = rs.getTimestamp("created_at");
        Timestamp updatedTs = rs.getTimestamp("updated_at");
        plan.setCreated_At(createdTs != null ? createdTs.toLocalDateTime() : null);
        plan.setUpdated_At(updatedTs != null ? updatedTs.toLocalDateTime() : null);
        return plan;
    };

    // 查全部
    public List<RentalPlan> findAll() {
        String sql = "SELECT * FROM rental_plan";
        return jdbcTemplate.query(sql, rowMapper);
    }

    // 查單筆
    public RentalPlan findById(int id) {
        String sql = "SELECT * FROM rental_plan WHERE id = ?";
        List<RentalPlan> result = jdbcTemplate.query(sql, rowMapper, id);
        return result.isEmpty() ? null : result.get(0);
    }

    // 新增
    public int insert(RentalPlan plan) {
        String sql = """
                    INSERT INTO rental_plan (vehicle_id, year, region, model, promotion, daily_price, km_fee, created_at, updated_at)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
                """;
        return jdbcTemplate.update(sql,
                plan.getVehicle_Id(),
                plan.getYear(),
                plan.getRegion(),
                plan.getModel(),
                plan.getPromotion(),
                plan.getDaily_Price(),
                plan.getKm_Fee(),
                Timestamp.valueOf(plan.getCreated_At()),
                Timestamp.valueOf(plan.getUpdated_At()));
    }

    // 修改
    public int update(RentalPlan plan) {
        String sql = """
                    UPDATE rental_plan SET vehicle_id=?, year=?, region=?, model=?, promotion=?,
                    daily_price=?, km_fee=? WHERE id=?
                """;
        return jdbcTemplate.update(sql,
                plan.getVehicle_Id(),
                plan.getYear(),
                plan.getRegion(),
                plan.getModel(),
                plan.getPromotion(),
                plan.getDaily_Price(),
                plan.getKm_Fee(),

                plan.getId());
    }

    // 刪除
    public int deleteById(int id) {
        String sql = "DELETE FROM rental_plan WHERE id = ?";
        return jdbcTemplate.update(sql, id);
    }
}
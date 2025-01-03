package cn.qihangerp.open.dou.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * UserCoordinateBean
 */
@NoArgsConstructor
@Data
public class UserCoordinateBean {
    /**
     * userCoordinateLatitude
     */
    @JsonProperty("user_coordinate_latitude")
    private String userCoordinateLatitude;
    /**
     * userCoordinateLongitude
     */
    @JsonProperty("user_coordinate_longitude")
    private String userCoordinateLongitude;
}

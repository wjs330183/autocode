package ${package}.entity;

import java.util.*;
import java.math.BigDecimal;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
* 描述：${tableComment}
* @author ${author}
* @date ${date}
*/

@Getter
@Setter
@NoArgsConstructor
public class ${entityName} extends BaseEntity {

<#if columns??>
    <#list columns as column>
        <#if !sysColumns?seq_contains(column.columnName)>
    /**
    *${column.comment!}
    */
    private ${column.javaType?split(".")?last} ${column.fieldName?uncap_first};

        </#if>
    </#list>
</#if>


}
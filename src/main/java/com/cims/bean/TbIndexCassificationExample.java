package com.cims.bean;

import java.util.ArrayList;
import java.util.List;

public class TbIndexCassificationExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbIndexCassificationExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * 
     * 
     * @author wcyong
     * 
     * @date 2020-04-06
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andClassificationIdIsNull() {
            addCriterion("classification_id is null");
            return (Criteria) this;
        }

        public Criteria andClassificationIdIsNotNull() {
            addCriterion("classification_id is not null");
            return (Criteria) this;
        }

        public Criteria andClassificationIdEqualTo(String value) {
            addCriterion("classification_id =", value, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdNotEqualTo(String value) {
            addCriterion("classification_id <>", value, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdGreaterThan(String value) {
            addCriterion("classification_id >", value, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdGreaterThanOrEqualTo(String value) {
            addCriterion("classification_id >=", value, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdLessThan(String value) {
            addCriterion("classification_id <", value, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdLessThanOrEqualTo(String value) {
            addCriterion("classification_id <=", value, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdLike(String value) {
            addCriterion("classification_id like", value, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdNotLike(String value) {
            addCriterion("classification_id not like", value, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdIn(List<String> values) {
            addCriterion("classification_id in", values, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdNotIn(List<String> values) {
            addCriterion("classification_id not in", values, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdBetween(String value1, String value2) {
            addCriterion("classification_id between", value1, value2, "classificationId");
            return (Criteria) this;
        }

        public Criteria andClassificationIdNotBetween(String value1, String value2) {
            addCriterion("classification_id not between", value1, value2, "classificationId");
            return (Criteria) this;
        }

        public Criteria andCassificationIsNull() {
            addCriterion("cassification is null");
            return (Criteria) this;
        }

        public Criteria andCassificationIsNotNull() {
            addCriterion("cassification is not null");
            return (Criteria) this;
        }

        public Criteria andCassificationEqualTo(String value) {
            addCriterion("cassification =", value, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationNotEqualTo(String value) {
            addCriterion("cassification <>", value, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationGreaterThan(String value) {
            addCriterion("cassification >", value, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationGreaterThanOrEqualTo(String value) {
            addCriterion("cassification >=", value, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationLessThan(String value) {
            addCriterion("cassification <", value, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationLessThanOrEqualTo(String value) {
            addCriterion("cassification <=", value, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationLike(String value) {
            addCriterion("cassification like", value, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationNotLike(String value) {
            addCriterion("cassification not like", value, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationIn(List<String> values) {
            addCriterion("cassification in", values, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationNotIn(List<String> values) {
            addCriterion("cassification not in", values, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationBetween(String value1, String value2) {
            addCriterion("cassification between", value1, value2, "cassification");
            return (Criteria) this;
        }

        public Criteria andCassificationNotBetween(String value1, String value2) {
            addCriterion("cassification not between", value1, value2, "cassification");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * 
     * 
     * @author wcyong
     * 
     * @date 2020-04-06
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}
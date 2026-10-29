-- ECOUNT 영업관리 Spring MVC 프로젝트용 Oracle DDL
-- 기능별 구성 및 화면 항목 설명 버전
-- 대상: Oracle Database 12c 이상
-- 실행 순서: SEQUENCE -> TABLE -> VIEW -> INDEX
-- 주의: 기존 객체를 DROP하지 않으므로 빈 개발 스키마에서 실행한다.
-- ID INSERT 예: TB_MANAGER_SEQ.NEXTVAL 또는 JPA @SequenceGenerator 사용

-- ============================================================
-- 1. SEQUENCES
-- ============================================================

-- TB_MANAGER.MANAGER_ID: 담당자를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_MANAGER_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_CURRENCY.CURRENCY_ID: 통화를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_CURRENCY_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_PROJECT.PROJECT_ID: 프로젝트를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_PROJECT_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_PRICE_GROUP.PRICE_GROUP_ID: 단가그룹을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_PRICE_GROUP_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_PARTNER_GROUP.PARTNER_GROUP_ID: 거래처그룹을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_PARTNER_GROUP_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_ITEM_GROUP.ITEM_GROUP_ID: 품목그룹을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_ITEM_GROUP_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_WAREHOUSE_GROUP.WAREHOUSE_GROUP_ID: 창고그룹을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_WAREHOUSE_GROUP_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_PROD_PROCESS.PROD_PROCESS_ID: 생산공정을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_PROD_PROCESS_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_QUALITY_INSP_TYPE.QUALITY_INSP_TYPE_ID: 품질검사유형을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_QUALITY_INSP_TYPE_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_BUSINESS_PARTNER.BUSINESS_PARTNER_ID: 거래처를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_BUSINESS_PARTNER_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_WAREHOUSE.WAREHOUSE_ID: 창고를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_WAREHOUSE_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_ITEM.ITEM_ID: 품목을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_ITEM_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_ITEM_PRICE.ITEM_PRICE_ID: 품목단가를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_ITEM_PRICE_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_STOCK_MOVEMENT.MOVEMENT_ID: 재고수불을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_STOCK_MOVEMENT_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_QUOTATION.QUOTE_ID: 견적서를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_QUOTATION_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_QUOTATION_ITEM.QUOTE_ITEM_ID: 견적서 상세행을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_QUOTATION_ITEM_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_SALES_ORDER.ORDER_ID: 주문서를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_SALES_ORDER_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_SALES_ORDER_ITEM.ORDER_ITEM_ID: 주문서 상세행을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_SALES_ORDER_ITEM_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_ORDER_RELEASE.RELEASE_ID: 주문소 출고를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_ORDER_RELEASE_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_ORDER_RELEASE_ITEM.RELEASE_ITEM_ID : 주문소 품목 출고를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_ORDER_RELEASE_ITEM_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_SALE.SALE_ID: 판매전표를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_SALE_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_SALE_ITEM.SALE_ITEM_ID: 판매전표 상세행을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_SALE_ITEM_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_SALE_ADJUSTMENT.ADJUSTMENT_ID: 판매 조정항목을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_SALE_ADJUSTMENT_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_PAYMENT.PAYMENT_ID: 결제내역을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_PAYMENT_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_SHIPPING_ORDER.SHIPPING_ORDER_ID: 출하지시서를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_SHIPPING_ORDER_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_SHIPPING_ORDER_ITEM.SHIPPING_ORDER_ITEM_ID: 출하지시서 상세행을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_SHIPPING_ORDER_ITEM_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_SHIPMENT.SHIPMENT_ID: 출하전표를 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_SHIPMENT_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_SHIPMENT_ITEM.SHIPMENT_ITEM_ID: 출하전표 상세행을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_SHIPMENT_ITEM_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
-- TB_VOUCHER_HISTORY.HISTORY_ID: 전표이력을 구분하는 내부 번호(PK)
CREATE SEQUENCE TB_VOUCHER_HISTORY_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;

-- ============================================================
-- 2. 공통 기준정보
-- ============================================================

-- 화면 위치: 공통 기준정보 > 담당자 관리
-- 테이블 역할: 전표와 기초정보에서 선택할 담당자 정보를 관리한다.
CREATE TABLE TB_MANAGER (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 담당자를 구분하는 내부 번호(PK)
    MANAGER_ID       NUMBER,
    -- 화면/업무 항목: 담당자코드
    EMPLOYEE_CODE    VARCHAR2(20)  NOT NULL,
    -- 화면/업무 항목: 담당자명
    EMPLOYEE_NAME    VARCHAR2(50)  NOT NULL,
    -- 화면/업무 항목: 검색창내용
    SEARCH_KEYWORD   VARCHAR2(200),
    -- 화면/업무 항목: 직위명
    POSITION_NAME    VARCHAR2(50),
    -- 화면/업무 항목: 연락처
    CONTACT_NUMBER   VARCHAR2(30),
    -- 화면/업무 항목: 이메일
    EMAIL            VARCHAR2(254),
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN           CHAR(1) DEFAULT 'Y' NOT NULL,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_MANAGER PRIMARY KEY (MANAGER_ID),
    CONSTRAINT UK_MANAGER_CODE UNIQUE (EMPLOYEE_CODE),
    CONSTRAINT CK_MANAGER_USE CHECK (USE_YN IN ('Y','N'))
);

-- 화면 위치: 공통 기준정보 > 통화 관리
-- 테이블 역할: 내자·외자 거래에서 사용할 통화와 환율을 관리한다.
CREATE TABLE TB_CURRENCY (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 통화를 구분하는 내부 번호(PK)
    CURRENCY_ID      NUMBER,
    -- 화면/업무 항목: 통화코드
    CURRENCY_CODE    VARCHAR2(10) NOT NULL,
    -- 화면/업무 항목: 통화명
    CURRENCY_NAME    VARCHAR2(50) NOT NULL,
    -- 화면/업무 항목: 환율
    EXCHANGE_RATE    NUMBER(18,6) DEFAULT 1 NOT NULL,
    -- 화면/업무 항목: 소수점 자릿수
    DECIMAL_PLACES   NUMBER(1) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN           CHAR(1) DEFAULT 'Y' NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_CURRENCY PRIMARY KEY (CURRENCY_ID),
    CONSTRAINT UK_CURRENCY_CODE UNIQUE (CURRENCY_CODE),
    CONSTRAINT CK_CURRENCY_DEC CHECK (DECIMAL_PLACES BETWEEN 0 AND 5),
    CONSTRAINT CK_CURRENCY_USE CHECK (USE_YN IN ('Y','N'))
);

-- 화면 위치: 공통 기준정보 > 프로젝트 관리
-- 테이블 역할: 견적·주문·판매·출하 전표에서 선택할 프로젝트를 관리한다.
CREATE TABLE TB_PROJECT (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 프로젝트를 구분하는 내부 번호(PK)
    PROJECT_ID       NUMBER,
    -- 화면/업무 항목: 프로젝트코드
    PROJECT_CODE     VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 프로젝트명
    PROJECT_NAME     VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN           CHAR(1) DEFAULT 'Y' NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_PROJECT PRIMARY KEY (PROJECT_ID),
    CONSTRAINT UK_PROJECT_CODE UNIQUE (PROJECT_CODE),
    CONSTRAINT CK_PROJECT_USE CHECK (USE_YN IN ('Y','N'))
);

-- 화면 위치: 기초등록 > 영업/구매 단가그룹
-- 테이블 역할: 거래처·창고에 적용할 영업단가그룹과 구매단가그룹을 관리한다.
CREATE TABLE TB_PRICE_GROUP (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 단가그룹을 구분하는 내부 번호(PK)
    PRICE_GROUP_ID   NUMBER,
    -- 화면/업무 항목: 그룹구분
    GROUP_TYPE       VARCHAR2(10) NOT NULL,
    -- 화면/업무 항목: 그룹코드
    GROUP_CODE       VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 그룹명
    GROUP_NAME       VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN           CHAR(1) DEFAULT 'Y' NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_PRICE_GROUP PRIMARY KEY (PRICE_GROUP_ID),
    CONSTRAINT UK_PRICE_GROUP UNIQUE (GROUP_TYPE, GROUP_CODE),
    CONSTRAINT CK_PRICE_GROUP_TYPE CHECK (GROUP_TYPE IN ('SALES','PURCHASE')),
    CONSTRAINT CK_PRICE_GROUP_USE CHECK (USE_YN IN ('Y','N'))
);

-- 화면 위치: 기초등록 > 거래처등록 > 그룹/계층그룹
-- 테이블 역할: 거래처 그룹1·그룹2·계층그룹을 통합 관리한다.
CREATE TABLE TB_PARTNER_GROUP (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 거래처그룹을 구분하는 내부 번호(PK)
    PARTNER_GROUP_ID NUMBER,
    -- 화면/업무 항목: 그룹구분
    GROUP_TYPE       VARCHAR2(10) NOT NULL,
    -- 화면/업무 항목: 그룹코드
    GROUP_CODE       VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 그룹명
    GROUP_NAME       VARCHAR2(100) NOT NULL,
    -- 연결 항목: 상위 그룹
    PARENT_GROUP_ID  NUMBER,
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN           CHAR(1) DEFAULT 'Y' NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_PARTNER_GROUP PRIMARY KEY (PARTNER_GROUP_ID),
    CONSTRAINT UK_PARTNER_GROUP UNIQUE (GROUP_TYPE, GROUP_CODE),
    CONSTRAINT FK_PG_PARENT FOREIGN KEY (PARENT_GROUP_ID)
        REFERENCES TB_PARTNER_GROUP (PARTNER_GROUP_ID),
    CONSTRAINT CK_PARTNER_GROUP_TYPE CHECK (GROUP_TYPE IN ('GROUP1','GROUP2','HIERARCHY')),
    CONSTRAINT CK_PARTNER_GROUP_USE CHECK (USE_YN IN ('Y','N'))
);

-- 화면 위치: 기초등록 > 품목등록 > 그룹/계층그룹
-- 테이블 역할: 품목 그룹1·2·3과 계층그룹을 통합 관리한다.
CREATE TABLE TB_ITEM_GROUP (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 품목그룹을 구분하는 내부 번호(PK)
    ITEM_GROUP_ID    NUMBER,
    -- 화면/업무 항목: 그룹구분
    GROUP_TYPE       VARCHAR2(10) NOT NULL,
    -- 화면/업무 항목: 그룹코드
    GROUP_CODE       VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 그룹명
    GROUP_NAME       VARCHAR2(100) NOT NULL,
    -- 연결 항목: 상위 그룹
    PARENT_GROUP_ID  NUMBER,
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN           CHAR(1) DEFAULT 'Y' NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_ITEM_GROUP PRIMARY KEY (ITEM_GROUP_ID),
    CONSTRAINT UK_ITEM_GROUP UNIQUE (GROUP_TYPE, GROUP_CODE),
    CONSTRAINT FK_IG_PARENT FOREIGN KEY (PARENT_GROUP_ID)
        REFERENCES TB_ITEM_GROUP (ITEM_GROUP_ID),
    CONSTRAINT CK_ITEM_GROUP_TYPE CHECK (GROUP_TYPE IN ('GROUP1','GROUP2','GROUP3','HIERARCHY')),
    CONSTRAINT CK_ITEM_GROUP_USE CHECK (USE_YN IN ('Y','N'))
);

-- 화면 위치: 기초등록 > 창고등록 > 계층그룹
-- 테이블 역할: 창고 계층그룹을 관리한다.
CREATE TABLE TB_WAREHOUSE_GROUP (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 창고그룹을 구분하는 내부 번호(PK)
    WAREHOUSE_GROUP_ID NUMBER,
    -- 화면/업무 항목: 그룹코드
    GROUP_CODE         VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 그룹명
    GROUP_NAME         VARCHAR2(100) NOT NULL,
    -- 연결 항목: 상위 그룹
    PARENT_GROUP_ID    NUMBER,
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN             CHAR(1) DEFAULT 'Y' NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_WAREHOUSE_GROUP PRIMARY KEY (WAREHOUSE_GROUP_ID),
    CONSTRAINT UK_WAREHOUSE_GROUP UNIQUE (GROUP_CODE),
    CONSTRAINT FK_WG_PARENT FOREIGN KEY (PARENT_GROUP_ID)
        REFERENCES TB_WAREHOUSE_GROUP (WAREHOUSE_GROUP_ID),
    CONSTRAINT CK_WAREHOUSE_GROUP_USE CHECK (USE_YN IN ('Y','N'))
);

-- 화면 위치: 기초등록 > 품목등록/창고등록 > 생산공정
-- 테이블 역할: 품목과 공장형 창고에서 선택할 생산공정을 관리한다.
CREATE TABLE TB_PROD_PROCESS (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 생산공정을 구분하는 내부 번호(PK)
    PROD_PROCESS_ID  NUMBER,
    -- 화면/업무 항목: 생산공정코드
    PROCESS_CODE     VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 생산공정명
    PROCESS_NAME     VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN           CHAR(1) DEFAULT 'Y' NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_PROD_PROCESS PRIMARY KEY (PROD_PROCESS_ID),
    CONSTRAINT UK_PROD_PROCESS UNIQUE (PROCESS_CODE),
    CONSTRAINT CK_PROD_PROCESS_USE CHECK (USE_YN IN ('Y','N'))
);

-- 화면 위치: 기초등록 > 품목등록 > 품질검사유형
-- 테이블 역할: 품목에 적용할 품질검사유형을 관리한다.
CREATE TABLE TB_QUALITY_INSP_TYPE (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 품질검사유형을 구분하는 내부 번호(PK)
    QUALITY_INSP_TYPE_ID NUMBER,
    -- 화면/업무 항목: 품질검사유형 코드
    INSPECTION_CODE      VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 품질검사유형명
    INSPECTION_NAME      VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN               CHAR(1) DEFAULT 'Y' NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_QUALITY_INSP PRIMARY KEY (QUALITY_INSP_TYPE_ID),
    CONSTRAINT UK_QUALITY_INSP UNIQUE (INSPECTION_CODE),
    CONSTRAINT CK_QUALITY_INSP_USE CHECK (USE_YN IN ('Y','N'))
);

-- ============================================================
-- 3. 기초등록
-- ============================================================

-- 화면 위치: 기초등록 > 거래처등록
-- 테이블 역할: 거래처의 기본정보, 주소, 담당자, 여신 및 단가 설정을 관리한다.
CREATE TABLE TB_BUSINESS_PARTNER (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 거래처를 구분하는 내부 번호(PK)
    BUSINESS_PARTNER_ID  NUMBER,
    -- 화면/업무 항목: 거래처코드
    PARTNER_CODE         VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 거래처명
    PARTNER_NAME         VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 거래처 코드구분
    CODE_TYPE            VARCHAR2(20) DEFAULT 'BUSINESS' NOT NULL,
    -- 화면/업무 항목: 대표자명
    REPRESENTATIVE_NAME  VARCHAR2(100),
    -- 화면/업무 항목: 업태
    BUSINESS_TYPE        VARCHAR2(100),
    -- 화면/업무 항목: 종목
    BUSINESS_ITEM        VARCHAR2(100),
    -- 화면/업무 항목: 전화번호
    PHONE_NUMBER         VARCHAR2(30),
    -- 화면/업무 항목: 팩스번호
    FAX_NUMBER           VARCHAR2(30),
    -- 화면/업무 항목: 모바일번호
    MOBILE_NUMBER        VARCHAR2(30),
    -- 화면/업무 항목: 이메일
    EMAIL                VARCHAR2(254),
    -- 화면/업무 항목: 검색창내용
    SEARCH_KEYWORD       VARCHAR2(200),
    -- 화면/업무 항목: 우편번호1
    POSTAL_CODE1         VARCHAR2(10),
    -- 화면/업무 항목: 주소1
    ADDRESS1             VARCHAR2(300),
    -- 화면/업무 항목: 상세주소1
    ADDRESS_DETAIL1      VARCHAR2(300),
    -- 화면/업무 항목: 우편번호2
    POSTAL_CODE2         VARCHAR2(10),
    -- 화면/업무 항목: 주소2
    ADDRESS2             VARCHAR2(300),
    -- 화면/업무 항목: 상세주소2
    ADDRESS_DETAIL2      VARCHAR2(300),
    -- 화면/업무 항목: 홈페이지
    HOMEPAGE_URL         VARCHAR2(500),
    -- 화면/업무 항목: 세무신고 거래처 지정방식
    TAX_PARTNER_MODE     VARCHAR2(10) DEFAULT 'SAME' NOT NULL,
    -- 연결 항목: 세무신고 거래처
    TAX_PARTNER_ID       NUMBER,
    -- 화면/업무 항목: 세무신고 거래처코드
    TAX_PARTNER_CODE     VARCHAR2(100),
    -- 화면/업무 항목: 종사업장번호
    BRANCH_NUMBER        VARCHAR2(20),
    -- 화면/업무 항목: 업종별구분
    INDUSTRY_CLASS       VARCHAR2(20),
    -- 화면/업무 항목: 통화
    CURRENCY_ID          NUMBER,
    -- 화면/업무 항목: 담당자
    MANAGER_ID           NUMBER,
    -- 화면/업무 항목: 적요
    NOTE                 VARCHAR2(1000),
    -- 화면/업무 항목: 출하대상 거래처 여부
    SHIPMENT_TARGET_YN   CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 영업 거래유형
    SALES_TRANS_TYPE     VARCHAR2(20),
    -- 화면/업무 항목: 구매 거래유형
    PURCHASE_TRANS_TYPE  VARCHAR2(20),
    -- 화면/업무 항목: 수금·지급예정일 계산규칙
    COLLECTION_RULE      VARCHAR2(20) DEFAULT 'DEFAULT' NOT NULL,
    -- 화면/업무 항목: 예정일 가산일수
    OFFSET_DAYS          NUMBER(5),
    -- 화면/업무 항목: 예정일 가산개월
    OFFSET_MONTHS        NUMBER(3),
    -- 화면/업무 항목: 매월 지정일
    DAY_OF_MONTH         NUMBER(2),
    -- 화면/업무 항목: 예정일 가산주수
    OFFSET_WEEKS         NUMBER(3),
    -- 화면/업무 항목: 지정 요일
    DAY_OF_WEEK          NUMBER(1),
    -- 화면/업무 항목: 채권번호 관리방식
    RECEIVABLE_NO_MODE   VARCHAR2(20) DEFAULT 'NONE' NOT NULL,
    -- 화면/업무 항목: 채무번호 관리방식
    PAYABLE_NO_MODE      VARCHAR2(20) DEFAULT 'NONE' NOT NULL,
    -- 화면/업무 항목: 여신한도
    CREDIT_LIMIT         NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 출고조정률
    OUTBOUND_ADJUST_RATE NUMBER(9,4) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 입고조정률
    INBOUND_ADJUST_RATE  NUMBER(9,4) DEFAULT 0 NOT NULL,
    -- 연결 항목: 영업단가그룹
    SALES_PRICE_GROUP_ID NUMBER,
    -- 연결 항목: 구매단가그룹
    PUR_PRICE_GROUP_ID   NUMBER,
    -- 화면/업무 항목: 여신기간(일)
    CREDIT_PERIOD_DAYS   NUMBER(5),
    -- 연결 항목: 그룹1
    GROUP1_ID            NUMBER,
    -- 연결 항목: 그룹2
    GROUP2_ID            NUMBER,
    -- 연결 항목: 계층그룹
    HIERARCHY_GROUP_ID   NUMBER,
    -- 화면/업무 항목: 사용자 문자항목1
    CUSTOM_TEXT1         VARCHAR2(500),
    -- 화면/업무 항목: 사용자 문자항목2
    CUSTOM_TEXT2         VARCHAR2(500),
    -- 화면/업무 항목: 사용자 문자항목3
    CUSTOM_TEXT3         VARCHAR2(500),
    -- 화면/업무 항목: 사용자 문자항목4
    CUSTOM_TEXT4         VARCHAR2(500),
    -- 화면/업무 항목: 사용자 문자항목5
    CUSTOM_TEXT5         VARCHAR2(500),
    -- 화면/업무 항목: 사용자 문자항목6
    CUSTOM_TEXT6         VARCHAR2(500),
    -- 화면/업무 항목: 사용자 숫자항목1
    CUSTOM_NUMBER1       NUMBER(18,4),
    -- 화면/업무 항목: 사용자 숫자항목2
    CUSTOM_NUMBER2       NUMBER(18,4),
    -- 화면/업무 항목: 사용자 숫자항목3
    CUSTOM_NUMBER3       NUMBER(18,4),
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN               CHAR(1) DEFAULT 'Y' NOT NULL,
    -- 화면/업무 항목: 최초 등록 담당자
    CREATED_BY           NUMBER,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT           TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 최종 수정 담당자
    UPDATED_BY           NUMBER,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT           TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_BUSINESS_PARTNER PRIMARY KEY (BUSINESS_PARTNER_ID),
    CONSTRAINT UK_BUSINESS_PARTNER UNIQUE (PARTNER_CODE),
    CONSTRAINT FK_BP_TAX_PARTNER FOREIGN KEY (TAX_PARTNER_ID)
        REFERENCES TB_BUSINESS_PARTNER (BUSINESS_PARTNER_ID),
    CONSTRAINT FK_BP_CURRENCY FOREIGN KEY (CURRENCY_ID) REFERENCES TB_CURRENCY (CURRENCY_ID),
    CONSTRAINT FK_BP_MANAGER FOREIGN KEY (MANAGER_ID) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_BP_SALES_PRICE FOREIGN KEY (SALES_PRICE_GROUP_ID) REFERENCES TB_PRICE_GROUP (PRICE_GROUP_ID),
    CONSTRAINT FK_BP_PUR_PRICE FOREIGN KEY (PUR_PRICE_GROUP_ID) REFERENCES TB_PRICE_GROUP (PRICE_GROUP_ID),
    CONSTRAINT FK_BP_GROUP1 FOREIGN KEY (GROUP1_ID) REFERENCES TB_PARTNER_GROUP (PARTNER_GROUP_ID),
    CONSTRAINT FK_BP_GROUP2 FOREIGN KEY (GROUP2_ID) REFERENCES TB_PARTNER_GROUP (PARTNER_GROUP_ID),
    CONSTRAINT FK_BP_HIER_GROUP FOREIGN KEY (HIERARCHY_GROUP_ID) REFERENCES TB_PARTNER_GROUP (PARTNER_GROUP_ID),
    CONSTRAINT FK_BP_CREATED_BY FOREIGN KEY (CREATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_BP_UPDATED_BY FOREIGN KEY (UPDATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT CK_BP_CODE_TYPE CHECK (CODE_TYPE IN ('BUSINESS','DOMESTIC','FOREIGN')),
    CONSTRAINT CK_BP_TAX_MODE CHECK (TAX_PARTNER_MODE IN ('SAME','SEARCH','DIRECT')),
    CONSTRAINT CK_BP_INDUSTRY CHECK (INDUSTRY_CLASS IS NULL OR INDUSTRY_CLASS IN ('GENERAL','CUSTOMS')),
    CONSTRAINT CK_BP_SHIP_TARGET CHECK (SHIPMENT_TARGET_YN IN ('Y','N')),
    CONSTRAINT CK_BP_USE CHECK (USE_YN IN ('Y','N'))
);

-- 화면 위치: 기초등록 > 창고등록
-- 테이블 역할: 창고·공장·외주공장의 기본정보와 단가·부가세 설정을 관리한다.
CREATE TABLE TB_WAREHOUSE (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 창고를 구분하는 내부 번호(PK)
    WAREHOUSE_ID          NUMBER,
    -- 화면/업무 항목: 창고코드
    WAREHOUSE_CODE        VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 창고명
    WAREHOUSE_NAME        VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 창고구분
    WAREHOUSE_TYPE        VARCHAR2(20) DEFAULT 'WAREHOUSE' NOT NULL,
    -- 연결 항목: 관련 기준정보 또는 원본 전표 식별번호
    PROD_PROCESS_ID       NUMBER,
    -- 연결 항목: 외주거래처
    OUTSOURCE_PARTNER_ID  NUMBER,
    -- 화면/업무 항목: 매출 부가세율 적용방식
    SALES_VAT_MODE        VARCHAR2(10) DEFAULT 'DEFAULT' NOT NULL,
    -- 화면/업무 항목: 매출 부가세율
    SALES_VAT_RATE        NUMBER(5,2),
    -- 화면/업무 항목: 매입 부가세율 적용방식
    PURCHASE_VAT_MODE     VARCHAR2(10) DEFAULT 'DEFAULT' NOT NULL,
    -- 화면/업무 항목: 매입 부가세율
    PURCHASE_VAT_RATE     NUMBER(5,2),
    -- 연결 항목: 영업단가그룹
    SALES_PRICE_GROUP_ID  NUMBER,
    -- 연결 항목: 구매단가그룹
    PUR_PRICE_GROUP_ID    NUMBER,
    -- 연결 항목: 관련 기준정보 또는 원본 전표 식별번호
    WAREHOUSE_GROUP_ID    NUMBER,
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN                CHAR(1) DEFAULT 'Y' NOT NULL,
    -- 화면/업무 항목: 최초 등록 담당자
    CREATED_BY            NUMBER,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT            TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 최종 수정 담당자
    UPDATED_BY            NUMBER,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT            TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_WAREHOUSE PRIMARY KEY (WAREHOUSE_ID),
    CONSTRAINT UK_WAREHOUSE_CODE UNIQUE (WAREHOUSE_CODE),
    CONSTRAINT FK_WH_PROCESS FOREIGN KEY (PROD_PROCESS_ID) REFERENCES TB_PROD_PROCESS (PROD_PROCESS_ID),
    CONSTRAINT FK_WH_OUTSOURCE FOREIGN KEY (OUTSOURCE_PARTNER_ID) REFERENCES TB_BUSINESS_PARTNER (BUSINESS_PARTNER_ID),
    CONSTRAINT FK_WH_SALES_PRICE FOREIGN KEY (SALES_PRICE_GROUP_ID) REFERENCES TB_PRICE_GROUP (PRICE_GROUP_ID),
    CONSTRAINT FK_WH_PUR_PRICE FOREIGN KEY (PUR_PRICE_GROUP_ID) REFERENCES TB_PRICE_GROUP (PRICE_GROUP_ID),
    CONSTRAINT FK_WH_GROUP FOREIGN KEY (WAREHOUSE_GROUP_ID) REFERENCES TB_WAREHOUSE_GROUP (WAREHOUSE_GROUP_ID),
    CONSTRAINT FK_WH_CREATED_BY FOREIGN KEY (CREATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_WH_UPDATED_BY FOREIGN KEY (UPDATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT CK_WH_TYPE CHECK (WAREHOUSE_TYPE IN ('WAREHOUSE','FACTORY','OUTSOURCE_FACTORY')),
    CONSTRAINT CK_WH_SALES_VAT_MODE CHECK (SALES_VAT_MODE IN ('DEFAULT','DIRECT')),
    CONSTRAINT CK_WH_PUR_VAT_MODE CHECK (PURCHASE_VAT_MODE IN ('DEFAULT','DIRECT')),
    CONSTRAINT CK_WH_USE CHECK (USE_YN IN ('Y','N'))
);

-- 화면 위치: 기초등록 > 품목등록
-- 테이블 역할: 품목의 기본정보, 규격, 세율, 수량관리, 원가 및 관리대상을 관리한다.
CREATE TABLE TB_ITEM (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 품목을 구분하는 내부 번호(PK)
    ITEM_ID                 NUMBER,
    -- 화면/업무 항목: 품목코드
    ITEM_CODE               VARCHAR2(50) NOT NULL,
    -- 화면/업무 항목: 품목명
    ITEM_NAME               VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 규격 입력방식
    SPEC_MODE               VARCHAR2(20) DEFAULT 'NAME' NOT NULL,
    -- 화면/업무 항목: 규격
    SPECIFICATION           VARCHAR2(100),
    -- 화면/업무 항목: 단위
    UNIT_NAME               VARCHAR2(20),
    -- 화면/업무 항목: 품목구분
    ITEM_TYPE               VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 세트품목 여부
    SET_YN                  CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 재고수량관리 여부
    INVENTORY_CONTROL_YN    CHAR(1) DEFAULT 'Y' NOT NULL,
    -- 화면/업무 항목: 매출 부가세율
    SALES_VAT_RATE          NUMBER(5,2) DEFAULT 10 NOT NULL,
    -- 화면/업무 항목: 매입 부가세율
    PURCHASE_VAT_RATE       NUMBER(5,2) DEFAULT 10 NOT NULL,
    -- 화면/업무 항목: 바코드
    BARCODE                 VARCHAR2(100),
    -- 화면/업무 항목: 검색창내용
    SEARCH_KEYWORD          VARCHAR2(200),
    -- 화면/업무 항목: C-Portal 공유 여부
    CPORTAL_SHARE_YN        CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 이미지경로
    IMAGE_PATH              VARCHAR2(500),
    -- 화면/업무 항목: 파일경로
    FILE_PATH               VARCHAR2(500),
    -- 화면/업무 항목: 적요
    NOTE                    VARCHAR2(1000),
    -- 연결 항목: 관련 기준정보 또는 원본 전표 식별번호
    PROD_PROCESS_ID         NUMBER,
    -- 연결 항목: 그룹1
    GROUP1_ID               NUMBER,
    -- 연결 항목: 그룹2
    GROUP2_ID               NUMBER,
    -- 연결 항목: 그룹3
    GROUP3_ID               NUMBER,
    -- 연결 항목: 계층그룹
    HIERARCHY_GROUP_ID      NUMBER,
    -- 연결 항목: 품질검사유형
    QUALITY_INSP_TYPE_ID    NUMBER,
    -- 화면/업무 항목: 품질검사방법
    QUALITY_INSP_METHOD     VARCHAR2(20),
    -- 화면/업무 항목: 추가수량 환산 분자
    CONVERSION_NUMERATOR    NUMBER(18,6) DEFAULT 1 NOT NULL,
    -- 화면/업무 항목: 추가수량 환산 분모
    CONVERSION_DENOMINATOR  NUMBER(18,6) DEFAULT 1 NOT NULL,
    -- 화면/업무 항목: 주문서 입력 시 안전재고 확인
    SAFE_ORDER_YN           CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 판매 시 안전재고 확인
    SAFE_SALE_YN            CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 생산불출 시 안전재고 확인
    SAFE_PROD_ISSUE_YN      CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 생산입고 시 안전재고 확인
    SAFE_PROD_RECEIPT_YN    CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 창고이동 시 안전재고 확인
    SAFE_TRANSFER_YN        CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 자가사용 시 안전재고 확인
    SAFE_SELF_USE_YN        CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 불량처리 시 안전재고 확인
    SAFE_DEFECT_YN          CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 기본 안전재고수량
    DEFAULT_SAFE_STOCK_QTY  NUMBER(18,4) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: C-Portal 최소주문 확인 여부
    CPORTAL_MIN_CHECK_YN    CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: C-Portal 최소주문수량
    CPORTAL_MIN_ORDER_QTY   NUMBER(18,4),
    -- 화면/업무 항목: C-Portal 주문단위
    CPORTAL_ORDER_UNIT      VARCHAR2(20),
    -- 화면/업무 항목: 조달기간
    PROCUREMENT_DAYS       NUMBER(5),
    -- 화면/업무 항목: 최소구매단위
    MIN_PURCHASE_UNIT       NUMBER(18,4),
    -- 연결 항목: 구매처
    PREFERRED_SUPPLIER_ID   NUMBER,
    -- 화면/업무 항목: 표준 노무시간
    STD_LABOR_TIME          NUMBER(18,4),
    -- 화면/업무 항목: 경비 배부가중치
    EXPENSE_WEIGHT          NUMBER(18,4),
    -- 화면/업무 항목: 표준 재료비단가
    STD_COST_MATERIAL       NUMBER(18,2),
    -- 화면/업무 항목: 표준 경비단가
    STD_COST_EXPENSE        NUMBER(18,2),
    -- 화면/업무 항목: 표준 노무비단가
    STD_COST_LABOR          NUMBER(18,2),
    -- 화면/업무 항목: 표준 외주비단가
    STD_COST_OUTSOURCING    NUMBER(18,2),
    -- 화면/업무 항목: 사용 여부(Y/N)
    USE_YN                  CHAR(1) DEFAULT 'Y' NOT NULL,
    -- 화면/업무 항목: 최초 등록 담당자
    CREATED_BY              NUMBER,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT              TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 최종 수정 담당자
    UPDATED_BY              NUMBER,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT              TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_ITEM PRIMARY KEY (ITEM_ID),
    CONSTRAINT UK_ITEM_CODE UNIQUE (ITEM_CODE),
    CONSTRAINT UK_ITEM_BARCODE UNIQUE (BARCODE),
    CONSTRAINT FK_ITEM_PROCESS FOREIGN KEY (PROD_PROCESS_ID) REFERENCES TB_PROD_PROCESS (PROD_PROCESS_ID),
    CONSTRAINT FK_ITEM_GROUP1 FOREIGN KEY (GROUP1_ID) REFERENCES TB_ITEM_GROUP (ITEM_GROUP_ID),
    CONSTRAINT FK_ITEM_GROUP2 FOREIGN KEY (GROUP2_ID) REFERENCES TB_ITEM_GROUP (ITEM_GROUP_ID),
    CONSTRAINT FK_ITEM_GROUP3 FOREIGN KEY (GROUP3_ID) REFERENCES TB_ITEM_GROUP (ITEM_GROUP_ID),
    CONSTRAINT FK_ITEM_HIER FOREIGN KEY (HIERARCHY_GROUP_ID) REFERENCES TB_ITEM_GROUP (ITEM_GROUP_ID),
    CONSTRAINT FK_ITEM_QUALITY FOREIGN KEY (QUALITY_INSP_TYPE_ID) REFERENCES TB_QUALITY_INSP_TYPE (QUALITY_INSP_TYPE_ID),
    CONSTRAINT FK_ITEM_SUPPLIER FOREIGN KEY (PREFERRED_SUPPLIER_ID) REFERENCES TB_BUSINESS_PARTNER (BUSINESS_PARTNER_ID),
    CONSTRAINT FK_ITEM_CREATED_BY FOREIGN KEY (CREATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_ITEM_UPDATED_BY FOREIGN KEY (UPDATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT CK_ITEM_SPEC_MODE CHECK (SPEC_MODE IN ('NAME','GROUP','CALC','CALC_GROUP')),
    CONSTRAINT CK_ITEM_TYPE CHECK (ITEM_TYPE IN ('RAW','SUB','PRODUCT','SEMI','GOODS','INTANGIBLE')),
    CONSTRAINT CK_ITEM_QUALITY_METHOD CHECK (QUALITY_INSP_METHOD IS NULL OR QUALITY_INSP_METHOD IN ('FULL','SAMPLING')),
    CONSTRAINT CK_ITEM_SET CHECK (SET_YN IN ('Y','N')),
    CONSTRAINT CK_ITEM_INV_CTL CHECK (INVENTORY_CONTROL_YN IN ('Y','N')),
    CONSTRAINT CK_ITEM_USE CHECK (USE_YN IN ('Y','N')),
    CONSTRAINT CK_ITEM_CONVERSION CHECK (CONVERSION_NUMERATOR > 0 AND CONVERSION_DENOMINATOR > 0)
);

-- 화면 위치: 기초등록 > 품목등록 > 단가
-- 테이블 역할: 품목의 입고·출고·A~J·외주 단가를 유형별로 관리한다.
CREATE TABLE TB_ITEM_PRICE (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 품목단가를 구분하는 내부 번호(PK)
    ITEM_PRICE_ID   NUMBER,
    -- 화면/업무 항목: 품목
    ITEM_ID         NUMBER NOT NULL,
    -- 화면/업무 항목: 단가구분
    PRICE_TYPE      VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 단가금액
    PRICE_AMOUNT    NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 부가세 포함 여부
    VAT_INCLUDED_YN CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT      TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_ITEM_PRICE PRIMARY KEY (ITEM_PRICE_ID),
    CONSTRAINT UK_ITEM_PRICE UNIQUE (ITEM_ID, PRICE_TYPE),
    CONSTRAINT FK_ITEM_PRICE_ITEM FOREIGN KEY (ITEM_ID) REFERENCES TB_ITEM (ITEM_ID),
    CONSTRAINT CK_ITEM_PRICE_TYPE CHECK (PRICE_TYPE IN ('PURCHASE','SALES','A','B','C','D','E','F','G','H','I','J','OUTSOURCE')),
    CONSTRAINT CK_ITEM_PRICE_VAT CHECK (VAT_INCLUDED_YN IN ('Y','N')),
    CONSTRAINT CK_ITEM_PRICE_AMT CHECK (PRICE_AMOUNT >= 0)
);

-- 화면 위치: 기초등록 > 품목등록 > 재고수량 / 재고관리
-- 테이블 역할: 창고별 품목 현재고와 안전재고를 관리한다.
CREATE TABLE TB_INVENTORY (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 창고를 구분하는 내부 번호(PK)
    WAREHOUSE_ID    NUMBER NOT NULL,
    -- DB 관리 항목: 품목을 구분하는 내부 번호(PK)
    ITEM_ID         NUMBER NOT NULL,
    -- 화면/업무 항목: 수량
    QUANTITY        NUMBER(18,4) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 창고별 안전재고수량
    SAFE_STOCK_QTY  NUMBER(18,4),
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT      TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_INVENTORY PRIMARY KEY (WAREHOUSE_ID, ITEM_ID),
    CONSTRAINT FK_INV_WAREHOUSE FOREIGN KEY (WAREHOUSE_ID) REFERENCES TB_WAREHOUSE (WAREHOUSE_ID),
    CONSTRAINT FK_INV_ITEM FOREIGN KEY (ITEM_ID) REFERENCES TB_ITEM (ITEM_ID)
);

-- 화면 위치: 영업관리 > 판매 / 재고조정
-- 테이블 역할: 판매·취소·재고조정에 따른 창고별 품목 수불 이력을 관리한다.
CREATE TABLE TB_STOCK_MOVEMENT (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 재고수불을 구분하는 내부 번호(PK)
    MOVEMENT_ID     NUMBER,
    -- 화면/업무 항목: 출하창고
    WAREHOUSE_ID    NUMBER NOT NULL,
    -- 화면/업무 항목: 품목
    ITEM_ID         NUMBER NOT NULL,
    -- 화면/업무 항목: 재고변동유형
    MOVEMENT_TYPE   VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 재고 증감수량
    QUANTITY_CHANGE NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 참조전표유형
    REFERENCE_TYPE  VARCHAR2(30),
    -- 연결 항목: 참조전표 식별번호
    REFERENCE_ID    NUMBER,
    -- 화면/업무 항목: 재고변동일시
    MOVED_AT        TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 최초 등록 담당자
    CREATED_BY      NUMBER,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_STOCK_MOVEMENT PRIMARY KEY (MOVEMENT_ID),
    CONSTRAINT FK_STOCK_WH FOREIGN KEY (WAREHOUSE_ID) REFERENCES TB_WAREHOUSE (WAREHOUSE_ID),
    CONSTRAINT FK_STOCK_ITEM FOREIGN KEY (ITEM_ID) REFERENCES TB_ITEM (ITEM_ID),
    CONSTRAINT FK_STOCK_MANAGER FOREIGN KEY (CREATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT CK_STOCK_TYPE CHECK (MOVEMENT_TYPE IN ('OPENING','SALE','SALE_CANCEL','ADJUSTMENT')),
    CONSTRAINT CK_STOCK_QTY CHECK (QUANTITY_CHANGE <> 0)
);

-- ============================================================
-- 4. 견적서
-- ============================================================

-- 화면 위치: 영업관리 > 견적서 > 견적서입력/조회
-- 테이블 역할: 견적서의 거래처·담당자·창고·통화·금액 등 전표 공통정보를 관리한다.
CREATE TABLE TB_QUOTATION (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 견적서를 구분하는 내부 번호(PK)
    QUOTE_ID         NUMBER,
    -- 화면/업무 항목: 전표번호
    VOUCHER_NO       VARCHAR2(30) NOT NULL,
    -- 화면/업무 항목: 견적일자
    QUOTE_DATE       DATE NOT NULL,
    -- 화면/업무 항목: 견적 유효일자
    VALID_UNTIL      DATE,
    -- 화면/업무 항목: 거래처
    BUSINESS_PARTNER_ID NUMBER NOT NULL,
    -- 화면/업무 항목: 담당자
    MANAGER_ID       NUMBER,
    -- 화면/업무 항목: 출하창고
    WAREHOUSE_ID     NUMBER,
    -- 화면/업무 항목: 거래유형
    TRANSACTION_TYPE VARCHAR2(20),
    -- 화면/업무 항목: 통화
    CURRENCY_ID      NUMBER,
    -- 화면/업무 항목: 환율
    EXCHANGE_RATE    NUMBER(18,6) DEFAULT 1 NOT NULL,
    -- 화면/업무 항목: 프로젝트
    PROJECT_ID       NUMBER,
    -- 화면/업무 항목: 첨부파일 경로
    ATTACHMENT_PATH  VARCHAR2(500),
    -- 화면/업무 항목: 사용자 추가항목
    CUSTOM_DATA      CLOB,
    -- 화면/업무 항목: 공급가액
    SUPPLY_AMOUNT    NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 부가세
    VAT_AMOUNT       NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 합계금액
    TOTAL_AMOUNT     NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 전표상태
    VOUCHER_STATUS   VARCHAR2(20) DEFAULT 'ACTIVE' NOT NULL,
    -- 화면/업무 항목: 진행상태
    PROGRESS_STATUS  VARCHAR2(20) DEFAULT 'OPEN' NOT NULL,
    -- 화면/업무 항목: 적요
    REMARKS          VARCHAR2(1000),
    -- 화면/업무 항목: 최초 등록 담당자
    CREATED_BY       NUMBER,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 최종 수정 담당자
    UPDATED_BY       NUMBER,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_QUOTATION PRIMARY KEY (QUOTE_ID),
    CONSTRAINT UK_QUOTATION_NO UNIQUE (VOUCHER_NO),
    CONSTRAINT FK_QUOTE_PARTNER FOREIGN KEY (BUSINESS_PARTNER_ID) REFERENCES TB_BUSINESS_PARTNER (BUSINESS_PARTNER_ID),
    CONSTRAINT FK_QUOTE_MANAGER FOREIGN KEY (MANAGER_ID) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_QUOTE_WH FOREIGN KEY (WAREHOUSE_ID) REFERENCES TB_WAREHOUSE (WAREHOUSE_ID),
    CONSTRAINT FK_QUOTE_CURRENCY FOREIGN KEY (CURRENCY_ID) REFERENCES TB_CURRENCY (CURRENCY_ID),
    CONSTRAINT FK_QUOTE_PROJECT FOREIGN KEY (PROJECT_ID) REFERENCES TB_PROJECT (PROJECT_ID),
    CONSTRAINT FK_QUOTE_CREATED_BY FOREIGN KEY (CREATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_QUOTE_UPDATED_BY FOREIGN KEY (UPDATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT CK_QUOTE_VSTATUS CHECK (VOUCHER_STATUS IN ('ACTIVE','CANCELLED')),
    CONSTRAINT CK_QUOTE_PSTATUS CHECK (PROGRESS_STATUS IN ('OPEN','PARTIAL','COMPLETED'))
);

-- 화면 위치: 영업관리 > 견적서 > 견적서입력
-- 테이블 역할: 견적서에 포함된 품목, 수량, 단가 및 금액을 행별로 관리한다.
CREATE TABLE TB_QUOTATION_ITEM (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 견적서 상세행을 구분하는 내부 번호(PK)
    QUOTE_ITEM_ID    NUMBER,
    -- 연결 항목: 관련 기준정보 또는 원본 전표 식별번호
    QUOTE_ID         NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 행번호
    LINE_NO          NUMBER(5) NOT NULL,
    -- 화면/업무 항목: 품목
    ITEM_ID          NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 품목코드
    ITEM_CODE_SNAP   VARCHAR2(50) NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 품목명
    ITEM_NAME_SNAP   VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 규격
    SPEC_SNAP        VARCHAR2(100),
    -- 화면/업무 항목: 전표 작성 당시 단위
    UNIT_SNAP        VARCHAR2(20),
    -- 화면/업무 항목: 수량
    QUANTITY         NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 단가
    UNIT_PRICE       NUMBER(18,2) NOT NULL,
    -- 화면/업무 항목: 공급가액
    SUPPLY_AMOUNT    NUMBER(18,2) NOT NULL,
    -- 화면/업무 항목: 부가세
    VAT_AMOUNT       NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 합계금액
    TOTAL_AMOUNT     NUMBER(18,2) NOT NULL,
    -- 화면/업무 항목: 적요
    REMARKS          VARCHAR2(1000),
    -- 화면/업무 항목: 사용자 추가항목
    CUSTOM_DATA      CLOB,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_QUOTATION_ITEM PRIMARY KEY (QUOTE_ITEM_ID),
    CONSTRAINT UK_QUOTATION_LINE UNIQUE (QUOTE_ID, LINE_NO),
    CONSTRAINT FK_QITEM_QUOTE FOREIGN KEY (QUOTE_ID) REFERENCES TB_QUOTATION (QUOTE_ID),
    CONSTRAINT FK_QITEM_ITEM FOREIGN KEY (ITEM_ID) REFERENCES TB_ITEM (ITEM_ID),
    CONSTRAINT CK_QITEM_QTY CHECK (QUANTITY > 0),
    CONSTRAINT CK_QITEM_PRICE CHECK (UNIT_PRICE >= 0)
);

-- ============================================================
-- 5. 주문서
-- ============================================================

-- 화면 위치: 영업관리 > 주문서 > 주문서입력/조회
-- 테이블 역할: 주문서의 거래처·납기일·창고·통화·금액 등 전표 공통정보를 관리한다.
CREATE TABLE TB_SALES_ORDER (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 주문서를 구분하는 내부 번호(PK)
    ORDER_ID         NUMBER,
    -- 화면/업무 항목: 전표번호
    VOUCHER_NO       VARCHAR2(30) NOT NULL,
    -- 화면/업무 항목: 주문일자
    ORDER_DATE       DATE NOT NULL,
    -- 화면/업무 항목: 납기일자
    DUE_DATE         DATE,
    -- 화면/업무 항목: 거래처
    BUSINESS_PARTNER_ID NUMBER NOT NULL,
    -- 화면/업무 항목: 담당자
    MANAGER_ID       NUMBER,
    -- 화면/업무 항목: 출하창고
    WAREHOUSE_ID     NUMBER,
    -- 화면/업무 항목: 거래유형
    TRANSACTION_TYPE VARCHAR2(20),
    -- 화면/업무 항목: 통화
    CURRENCY_ID      NUMBER,
    -- 화면/업무 항목: 환율
    EXCHANGE_RATE    NUMBER(18,6) DEFAULT 1 NOT NULL,
    -- 화면/업무 항목: 프로젝트
    PROJECT_ID       NUMBER,
    -- 화면/업무 항목: 첨부파일 경로
    ATTACHMENT_PATH  VARCHAR2(500),
    -- 화면/업무 항목: 사용자 추가항목
    CUSTOM_DATA      CLOB,
    -- 화면/업무 항목: 공급가액
    SUPPLY_AMOUNT    NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 부가세
    VAT_AMOUNT       NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 합계금액
    TOTAL_AMOUNT     NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 삭제 여부(Y/N)
    DELETED_YN       CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 진행상태
    PROGRESS_STATUS  VARCHAR2(20) DEFAULT 'IN_PROGRESS' NOT NULL,
    -- 화면/업무 항목: 적요
    REMARKS          VARCHAR2(1000),
    -- 화면/업무 항목: 최초 등록 담당자
    CREATED_BY       NUMBER,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 최종 수정 담당자
    UPDATED_BY       NUMBER,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SALES_ORDER PRIMARY KEY (ORDER_ID),
    CONSTRAINT UK_SALES_ORDER_NO UNIQUE (VOUCHER_NO),
    CONSTRAINT FK_ORDER_PARTNER FOREIGN KEY (BUSINESS_PARTNER_ID) REFERENCES TB_BUSINESS_PARTNER (BUSINESS_PARTNER_ID),
    CONSTRAINT FK_ORDER_MANAGER FOREIGN KEY (MANAGER_ID) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_ORDER_WH FOREIGN KEY (WAREHOUSE_ID) REFERENCES TB_WAREHOUSE (WAREHOUSE_ID),
    CONSTRAINT FK_ORDER_CURRENCY FOREIGN KEY (CURRENCY_ID) REFERENCES TB_CURRENCY (CURRENCY_ID),
    CONSTRAINT FK_ORDER_PROJECT FOREIGN KEY (PROJECT_ID) REFERENCES TB_PROJECT (PROJECT_ID),
    CONSTRAINT FK_ORDER_CREATED_BY FOREIGN KEY (CREATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_ORDER_UPDATED_BY FOREIGN KEY (UPDATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT CK_ORDER_DELETED CHECK (DELETED_YN IN ('Y','N')),
    CONSTRAINT CK_ORDER_PSTATUS CHECK (PROGRESS_STATUS IN ('UNCONFIRMED','COMPLETED','IN_PROGRESS'))
);

-- 화면 위치: 영업관리 > 주문서 > 주문서입력
-- 테이블 역할: 주문서에 포함된 품목, 수량, 단가, 납기일 및 금액을 행별로 관리한다.
CREATE TABLE TB_SALES_ORDER_ITEM (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 주문서 상세행을 구분하는 내부 번호(PK)
    ORDER_ITEM_ID    NUMBER,
    -- 연결 항목: 관련 기준정보 또는 원본 전표 식별번호
    ORDER_ID         NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 행번호
    LINE_NO          NUMBER(5),
    -- 화면/업무 항목: 품목
    ITEM_ID          NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 품목코드
    ITEM_CODE_SNAP   VARCHAR2(50) NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 품목명
    ITEM_NAME_SNAP   VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 규격
    SPEC_SNAP        VARCHAR2(100),
    -- 화면/업무 항목: 전표 작성 당시 단위
    UNIT_SNAP        VARCHAR2(20),
    -- 화면/업무 항목: 수량
    QUANTITY         NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 단가
    UNIT_PRICE       NUMBER(18,2) NOT NULL,
    -- 화면/업무 항목: 공급가액
    SUPPLY_AMOUNT    NUMBER(18,2) NOT NULL,
    -- 화면/업무 항목: 부가세
    VAT_AMOUNT       NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 합계금액
    TOTAL_AMOUNT     NUMBER(18,2) NOT NULL,
    -- 화면/업무 항목: 납기일자
    DUE_DATE         DATE,
    -- 화면/업무 항목: 적요
    REMARKS          VARCHAR2(1000),
    -- 화면/업무 항목: 사용자 추가항목
    CUSTOM_DATA      CLOB,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SALES_ORDER_ITEM PRIMARY KEY (ORDER_ITEM_ID),
    CONSTRAINT UK_SALES_ORDER_LINE UNIQUE (ORDER_ID, LINE_NO),
    CONSTRAINT FK_OITEM_ORDER FOREIGN KEY (ORDER_ID) REFERENCES TB_SALES_ORDER (ORDER_ID) ON DELETE CASCADE,
    CONSTRAINT FK_OITEM_ITEM FOREIGN KEY (ITEM_ID) REFERENCES TB_ITEM (ITEM_ID),
    CONSTRAINT CK_OITEM_QTY CHECK (QUANTITY > 0),
    CONSTRAINT CK_OITEM_PRICE CHECK (UNIT_PRICE >= 0)
);

-- 화면 위치: 영업관리 > 견적서 > 미주문현황
-- 테이블 역할: 견적상세와 주문상세의 연결수량을 관리하여 미주문수량을 계산한다.
CREATE TABLE TB_QUOTE_ORDER_LINK (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 견적서 상세행을 구분하는 내부 번호(PK)
    QUOTE_ITEM_ID    NUMBER NOT NULL,
    -- DB 관리 항목: 주문서 상세행을 구분하는 내부 번호(PK)
    ORDER_ITEM_ID    NUMBER NOT NULL,
    -- 화면/업무 항목: 원본 전표에서 적용한 수량
    APPLIED_QTY      NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_QUOTE_ORDER_LINK PRIMARY KEY (QUOTE_ITEM_ID, ORDER_ITEM_ID),
    CONSTRAINT FK_QOL_QUOTE_ITEM FOREIGN KEY (QUOTE_ITEM_ID) REFERENCES TB_QUOTATION_ITEM (QUOTE_ITEM_ID),
    CONSTRAINT FK_QOL_ORDER_ITEM FOREIGN KEY (ORDER_ITEM_ID) REFERENCES TB_SALES_ORDER_ITEM (ORDER_ITEM_ID) ON DELETE CASCADE,
    CONSTRAINT CK_QOL_QTY CHECK (APPLIED_QTY > 0)
);


-- 화면 위치 : 영업관리 > 주문서 > 주문서 출고 처리
-- 테이블 역할 : 출고 처리된 주문서를 관리한다.
CREATE TABLE TB_ORDER_RELEASE (
-- DB 관리 항목: 출고처리 전표를 구분하는 내부 번호(PK)
RELEASE_ID       NUMBER,
-- 화면/업무 항목: 전표번호
VOUCHER_NO       VARCHAR2(30) NOT NULL,
-- 화면/업무 항목: 출고처리일자
RELEASE_DATE     DATE NOT NULL,
-- 연결 항목: 대상 주문서
ORDER_ID         NUMBER NOT NULL,
-- 화면/업무 항목: 적요
REMARKS          VARCHAR2(1000),
-- 화면/업무 항목: 최초 등록일시
CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

CONSTRAINT PK_ORDER_RELEASE PRIMARY KEY (RELEASE_ID),
CONSTRAINT UK_ORDER_RELEASE_NO UNIQUE (VOUCHER_NO),
CONSTRAINT FK_ORL_ORDER FOREIGN KEY (ORDER_ID) REFERENCES TB_SALES_ORDER (ORDER_ID)
);

-- 화면 위치 : 영업관리 > 주문서 > 주문서 출고 처리
-- 테이블 역할 : 출고 처리된 주문서 품목들을 관리한다.
CREATE TABLE TB_ORDER_RELEASE_ITEM (
-- DB 관리 항목: 출고처리 상세행을 구분하는 내부 번호(PK)
RELEASE_ITEM_ID NUMBER,
-- 연결 항목: 출고처리 전표
RELEASE_ID NUMBER NOT NULL,
-- 연결 항목: 출고처리한 주문서 상세행
ORDER_ITEM_ID NUMBER NOT NULL,
-- 화면/업무 항목: 출고수량
RELEASED_QTY NUMBER(18,4) NOT NULL,

CONSTRAINT PK_ORDER_RELEASE_ITEM PRIMARY KEY (RELEASE_ITEM_ID),
CONSTRAINT UK_ORDER_RELEASE_ITEM UNIQUE (RELEASE_ID, ORDER_ITEM_ID),
CONSTRAINT FK_ORI_RELEASE FOREIGN KEY (RELEASE_ID) REFERENCES TB_ORDER_RELEASE (RELEASE_ID) ON DELETE CASCADE,
CONSTRAINT FK_ORI_ORDER_ITEM FOREIGN KEY (ORDER_ITEM_ID) REFERENCES TB_SALES_ORDER_ITEM (ORDER_ITEM_ID),
CONSTRAINT CK_ORI_QTY CHECK (RELEASED_QTY > 0)
);

-- 화면 위치 : 주문서 입력, 주문서 수정
-- 테이블 역할 : 주문서 입력과 수정에 올라온 첨부파일을 관리한다.
create table order_attach(
-- UUID
UUID VARCHAR2(100) PRIMARY KEY,
-- 업로드 경로
UPLOADPATH VARCHAR2(100) NOT NULL,
-- 파일명
FILENAME VARCHAR(100) NOT NULL,
-- 이미지 구분
FILETYPE CHAR(1),
-- 주문서 번호
ONO NUMBER(10),
CONSTRAINT FK_ORDER_ATTACH_ORDER FOREIGN KEY (ONO) REFERENCES TB_SALES_ORDER (ORDER_ID) ON DELETE CASCADE
);

-- ============================================================
-- 6. 판매 / POS / 결제
-- ============================================================

-- 화면 위치: 영업관리 > 판매 > 판매입력/판매입력Ⅱ/판매조회
-- 테이블 역할: 일반 판매와 POS 판매 전표의 공통정보, 금액 및 결제상태를 관리한다.
CREATE TABLE TB_SALE (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 판매전표를 구분하는 내부 번호(PK)
    SALE_ID          NUMBER,
    -- 화면/업무 항목: 전표번호
    VOUCHER_NO       VARCHAR2(30) NOT NULL,
    -- 화면/업무 항목: 판매일자
    SALE_DATE        DATE NOT NULL,
    -- 화면/업무 항목: 판매입력구분(일반/POS)
    SALE_INPUT_TYPE  VARCHAR2(10) DEFAULT 'NORMAL' NOT NULL,
    -- 화면/업무 항목: 거래처
    BUSINESS_PARTNER_ID NUMBER NOT NULL,
    -- 화면/업무 항목: 담당자
    MANAGER_ID       NUMBER,
    -- 화면/업무 항목: 출하창고
    WAREHOUSE_ID     NUMBER NOT NULL,
    -- 화면/업무 항목: 거래유형
    TRANSACTION_TYPE VARCHAR2(20),
    -- 화면/업무 항목: 통화
    CURRENCY_ID      NUMBER,
    -- 화면/업무 항목: 환율
    EXCHANGE_RATE    NUMBER(18,6) DEFAULT 1 NOT NULL,
    -- 화면/업무 항목: 프로젝트
    PROJECT_ID       NUMBER,
    -- 화면/업무 항목: 첨부파일 경로
    ATTACHMENT_PATH  VARCHAR2(500),
    -- 화면/업무 항목: 사용자 추가항목
    CUSTOM_DATA      CLOB,
    -- 화면/업무 항목: 공급가액
    SUPPLY_AMOUNT    NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 부가세
    VAT_AMOUNT       NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 조정금액
    ADJUSTMENT_AMOUNT NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 합계금액
    TOTAL_AMOUNT     NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 전표상태
    VOUCHER_STATUS   VARCHAR2(20) DEFAULT 'ACTIVE' NOT NULL,
    -- 화면/업무 항목: 판매서 확인상태(미확인/확인)
    PROGRESS_STATUS  VARCHAR2(20) DEFAULT 'UNCONFIRMED' NOT NULL,
    -- 화면/업무 항목: 결제상태
    PAYMENT_STATUS   VARCHAR2(20) DEFAULT 'UNPAID' NOT NULL,
    -- 화면/업무 항목: 적요
    REMARKS          VARCHAR2(1000),
    -- 화면/업무 항목: 최초 등록 담당자
    CREATED_BY       NUMBER,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 최종 수정 담당자
    UPDATED_BY       NUMBER,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SALE PRIMARY KEY (SALE_ID),
    CONSTRAINT UK_SALE_NO UNIQUE (VOUCHER_NO),
    CONSTRAINT FK_SALE_PARTNER FOREIGN KEY (BUSINESS_PARTNER_ID) REFERENCES TB_BUSINESS_PARTNER (BUSINESS_PARTNER_ID),
    CONSTRAINT FK_SALE_MANAGER FOREIGN KEY (MANAGER_ID) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_SALE_WH FOREIGN KEY (WAREHOUSE_ID) REFERENCES TB_WAREHOUSE (WAREHOUSE_ID),
    CONSTRAINT FK_SALE_CURRENCY FOREIGN KEY (CURRENCY_ID) REFERENCES TB_CURRENCY (CURRENCY_ID),
    CONSTRAINT FK_SALE_PROJECT FOREIGN KEY (PROJECT_ID) REFERENCES TB_PROJECT (PROJECT_ID),
    CONSTRAINT FK_SALE_CREATED_BY FOREIGN KEY (CREATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_SALE_UPDATED_BY FOREIGN KEY (UPDATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT CK_SALE_INPUT_TYPE CHECK (SALE_INPUT_TYPE IN ('NORMAL','POS')),
    CONSTRAINT CK_SALE_VSTATUS CHECK (VOUCHER_STATUS IN ('ACTIVE','CANCELLED','RETURN','HOLD')),
    CONSTRAINT CK_SALE_PROGRESS CHECK (PROGRESS_STATUS IN ('UNCONFIRMED','CONFIRMED')),
    CONSTRAINT CK_SALE_PSTATUS CHECK (PAYMENT_STATUS IN ('UNPAID','PARTIAL','PAID','CANCELLED'))
);

-- 화면 위치: 영업관리 > 판매 > 판매입력/판매입력Ⅱ
-- 테이블 역할: 판매 품목, 수량, 시리얼·로트, 단가와 금액을 행별로 관리한다.
CREATE TABLE TB_SALE_ITEM (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 판매전표 상세행을 구분하는 내부 번호(PK)
    SALE_ITEM_ID     NUMBER,
    -- 연결 항목: 관련 기준정보 또는 원본 전표 식별번호
    SALE_ID          NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 행번호
    LINE_NO          NUMBER(5) NOT NULL,
    -- 화면/업무 항목: 품목
    ITEM_ID          NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 품목코드
    ITEM_CODE_SNAP   VARCHAR2(50) NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 품목명
    ITEM_NAME_SNAP   VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 규격
    SPEC_SNAP        VARCHAR2(100),
    -- 화면/업무 항목: 전표 작성 당시 단위
    UNIT_SNAP        VARCHAR2(20),
    -- 화면/업무 항목: 시리얼·로트번호
    SERIAL_LOT_NO    VARCHAR2(100),
    -- 화면/업무 항목: 수량
    QUANTITY         NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 단가
    UNIT_PRICE       NUMBER(18,2) NOT NULL,
    -- 화면/업무 항목: 공급가액
    SUPPLY_AMOUNT    NUMBER(18,2) NOT NULL,
    -- 화면/업무 항목: 부가세
    VAT_AMOUNT       NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 합계금액
    TOTAL_AMOUNT     NUMBER(18,2) NOT NULL,
    -- 화면/업무 항목: 적요
    REMARKS          VARCHAR2(1000),
    -- 화면/업무 항목: 사용자 추가항목
    CUSTOM_DATA      CLOB,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SALE_ITEM PRIMARY KEY (SALE_ITEM_ID),
    CONSTRAINT UK_SALE_LINE UNIQUE (SALE_ID, LINE_NO),
    CONSTRAINT FK_SITEM_SALE FOREIGN KEY (SALE_ID) REFERENCES TB_SALE (SALE_ID),
    CONSTRAINT FK_SITEM_ITEM FOREIGN KEY (ITEM_ID) REFERENCES TB_ITEM (ITEM_ID),
    CONSTRAINT CK_SITEM_QTY CHECK (QUANTITY > 0),
    CONSTRAINT CK_SITEM_PRICE CHECK (UNIT_PRICE >= 0)
);

-- 화면 위치: 영업관리 > 주문서출고처리 / 미판매현황
-- 테이블 역할: 주문상세와 판매상세의 연결수량을 관리하여 미판매수량을 계산한다.
CREATE TABLE TB_ORDER_SALE_LINK (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 주문서 상세행을 구분하는 내부 번호(PK)
    ORDER_ITEM_ID    NUMBER NOT NULL,
    -- DB 관리 항목: 판매전표 상세행을 구분하는 내부 번호(PK)
    SALE_ITEM_ID     NUMBER NOT NULL,
    -- 화면/업무 항목: 원본 전표에서 적용한 수량
    APPLIED_QTY      NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_ORDER_SALE_LINK PRIMARY KEY (ORDER_ITEM_ID, SALE_ITEM_ID),
    CONSTRAINT FK_OSL_ORDER_ITEM FOREIGN KEY (ORDER_ITEM_ID) REFERENCES TB_SALES_ORDER_ITEM (ORDER_ITEM_ID) ON DELETE CASCADE,
    CONSTRAINT FK_OSL_SALE_ITEM FOREIGN KEY (SALE_ITEM_ID) REFERENCES TB_SALE_ITEM (SALE_ITEM_ID),
    CONSTRAINT CK_OSL_QTY CHECK (APPLIED_QTY > 0)
);

-- 화면 위치: 영업관리 > 판매 > 판매입력 > 견적서 불러오기
-- 테이블 역할: 견적상세에서 판매상세로 적용한 수량을 관리한다.
CREATE TABLE TB_QUOTE_SALE_LINK (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 원본 견적서 상세행
    QUOTE_ITEM_ID    NUMBER NOT NULL,
    -- DB 관리 항목: 생성된 판매전표 상세행
    SALE_ITEM_ID     NUMBER NOT NULL,
    -- 화면/업무 항목: 원본 견적 행에서 판매로 가져온 수량
    APPLIED_QTY      NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 연결 생성일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_QUOTE_SALE_LINK PRIMARY KEY (QUOTE_ITEM_ID, SALE_ITEM_ID),
    CONSTRAINT FK_QSL_QUOTE_ITEM FOREIGN KEY (QUOTE_ITEM_ID) REFERENCES TB_QUOTATION_ITEM (QUOTE_ITEM_ID),
    CONSTRAINT FK_QSL_SALE_ITEM FOREIGN KEY (SALE_ITEM_ID) REFERENCES TB_SALE_ITEM (SALE_ITEM_ID),
    CONSTRAINT CK_QSL_QTY CHECK (APPLIED_QTY > 0)
);

-- 화면 위치: 영업관리 > 판매 > 판매입력 > 기존 판매 불러오기
-- 테이블 역할: 기존 판매상세를 원본으로 새 판매상세를 생성한 내역을 관리한다.
CREATE TABLE TB_SALE_ORIGIN_LINK (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 불러온 기존 판매전표 상세행
    SRC_SALE_ITEM_ID NUMBER NOT NULL,
    -- DB 관리 항목: 새로 생성된 판매전표 상세행
    SALE_ITEM_ID     NUMBER NOT NULL,
    -- 화면/업무 항목: 원본 판매 행에서 가져온 수량
    APPLIED_QTY      NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 연결 생성일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SALE_ORIGIN_LINK PRIMARY KEY (SRC_SALE_ITEM_ID, SALE_ITEM_ID),
    CONSTRAINT FK_SOL_SRC_SALE_ITEM FOREIGN KEY (SRC_SALE_ITEM_ID) REFERENCES TB_SALE_ITEM (SALE_ITEM_ID),
    CONSTRAINT FK_SOL_SALE_ITEM FOREIGN KEY (SALE_ITEM_ID) REFERENCES TB_SALE_ITEM (SALE_ITEM_ID),
    CONSTRAINT CK_SOL_QTY CHECK (APPLIED_QTY > 0),
    CONSTRAINT CK_SOL_DIFF CHECK (SRC_SALE_ITEM_ID <> SALE_ITEM_ID)
);

-- 화면 위치: 영업관리 > 판매 > 판매입력Ⅱ
-- 테이블 역할: 판매입력Ⅱ의 할인·할증 등 금액 조정항목을 관리한다.
CREATE TABLE TB_SALE_ADJUSTMENT (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 판매 조정항목을 구분하는 내부 번호(PK)
    ADJUSTMENT_ID    NUMBER,
    -- 연결 항목: 관련 기준정보 또는 원본 전표 식별번호
    SALE_ID          NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 행번호
    LINE_NO          NUMBER(5) NOT NULL,
    -- 화면/업무 항목: 금액조정항목명
    ADJUSTMENT_NAME  VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 증감구분
    INCREASE_DECREASE VARCHAR2(10) NOT NULL,
    -- 화면/업무 항목: 공급가액
    SUPPLY_AMOUNT    NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 부가세
    VAT_AMOUNT       NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 합계금액
    TOTAL_AMOUNT     NUMBER(18,2) DEFAULT 0 NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SALE_ADJUSTMENT PRIMARY KEY (ADJUSTMENT_ID),
    CONSTRAINT UK_SALE_ADJ_LINE UNIQUE (SALE_ID, LINE_NO),
    CONSTRAINT FK_SALE_ADJ_SALE FOREIGN KEY (SALE_ID) REFERENCES TB_SALE (SALE_ID),
    CONSTRAINT CK_SALE_ADJ_SIGN CHECK (INCREASE_DECREASE IN ('INCREASE','DECREASE'))
);

-- 화면 위치: 영업관리 > 판매 > 결제내역조회/결제내역자료비교
-- 테이블 역할: 판매Ⅱ와 연결된 결제 요청·승인·실패·취소 및 전표반영 정보를 관리한다.
CREATE TABLE TB_PAYMENT (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 결제내역을 구분하는 내부 번호(PK)
    PAYMENT_ID       NUMBER,
    -- 연결 항목: 관련 기준정보 또는 원본 전표 식별번호
    SALE_ID          NUMBER NOT NULL,
    -- 화면/업무 항목: 결제 요청일시
    REQUESTED_AT     TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 연결 항목: 결제 요청자
    REQUESTER_ID     NUMBER,
    -- 화면/업무 항목: 거래처
    BUSINESS_PARTNER_ID NUMBER NOT NULL,
    -- 화면/업무 항목: 출하창고
    WAREHOUSE_ID     NUMBER,
    -- 화면/업무 항목: 결제 회사코드
    COMPANY_CODE     VARCHAR2(50),
    -- 화면/업무 항목: VAN사 코드
    VAN_CODE         VARCHAR2(50),
    -- 화면/업무 항목: 결제수단
    PAYMENT_METHOD   VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 할부개월
    INSTALLMENT_MONTHS NUMBER(2),
    -- 화면/업무 항목: 영수증구분
    RECEIPT_TYPE     VARCHAR2(20),
    -- 화면/업무 항목: 간편결제번호
    EASY_PAYMENT_NO  VARCHAR2(100),
    -- 화면/업무 항목: 영수증 출력 여부
    RECEIPT_PRINT_YN CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 공급가액
    SUPPLY_AMOUNT    NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 부가세율(10.00은 10%)
    VAT_RATE         NUMBER(5,2) NOT NULL,
    -- 화면/업무 항목: 부가세
    VAT_AMOUNT       NUMBER(18,2) DEFAULT 0 NOT NULL,
    -- 화면/업무 항목: 결제금액
    PAYMENT_AMOUNT   NUMBER(18,2) NOT NULL,
    -- 화면/업무 항목: 결제상태
    PAYMENT_STATUS   VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 승인번호
    APPROVAL_NUMBER  VARCHAR2(100),
    -- 화면/업무 항목: 결제 실패사유
    FAILURE_REASON   VARCHAR2(500),
    -- 화면/업무 항목: 재고전표번호
    INVENTORY_VOUCHER_NO VARCHAR2(30),
    -- 화면/업무 항목: 회계전표번호
    ACCOUNTING_VOUCHER_NO VARCHAR2(30),
    -- 화면/업무 항목: 강제처리 여부
    FORCED_YN        CHAR(1) DEFAULT 'N' NOT NULL,
    -- 화면/업무 항목: 결제 취소일시
    CANCELLED_AT     TIMESTAMP,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_PAYMENT PRIMARY KEY (PAYMENT_ID),
    CONSTRAINT FK_PAYMENT_SALE FOREIGN KEY (SALE_ID) REFERENCES TB_SALE (SALE_ID),
    CONSTRAINT FK_PAYMENT_REQUESTER FOREIGN KEY (REQUESTER_ID) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_PAYMENT_PARTNER FOREIGN KEY (BUSINESS_PARTNER_ID) REFERENCES TB_BUSINESS_PARTNER (BUSINESS_PARTNER_ID),
    CONSTRAINT FK_PAYMENT_WH FOREIGN KEY (WAREHOUSE_ID) REFERENCES TB_WAREHOUSE (WAREHOUSE_ID),
    CONSTRAINT CK_PAYMENT_METHOD CHECK (PAYMENT_METHOD IN ('CASH','CARD','TRANSFER','EASY_PAY','OTHER')),
    CONSTRAINT CK_PAYMENT_STATUS CHECK (PAYMENT_STATUS IN ('REQUESTED','APPROVED','FAILED','CANCELLED','FORCED')),
    CONSTRAINT CK_PAYMENT_RECEIPT CHECK (RECEIPT_PRINT_YN IN ('Y','N')),
    CONSTRAINT CK_PAYMENT_FORCED CHECK (FORCED_YN IN ('Y','N')),
    CONSTRAINT CK_PAYMENT_VAT_RATE CHECK (VAT_RATE BETWEEN 0 AND 100),
    CONSTRAINT CK_PAYMENT_AMT CHECK (PAYMENT_AMOUNT >= 0)
);

-- ============================================================
-- 7. 출하지시서 / 출하
-- ============================================================

-- 화면 위치: 영업관리 > 출하지시서 > 출하지시서입력/조회
-- 테이블 역할: 출하지시서의 거래처·창고·예정일·연락처·배송지 정보를 관리한다.
CREATE TABLE TB_SHIPPING_ORDER (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 출하지시서를 구분하는 내부 번호(PK)
    SHIPPING_ORDER_ID NUMBER,
    -- 화면/업무 항목: 전표번호
    VOUCHER_NO       VARCHAR2(30) NOT NULL,
    -- 화면/업무 항목: 출하지시일자
    SHIPPING_ORDER_DATE DATE NOT NULL,
    -- 화면/업무 항목: 거래처
    BUSINESS_PARTNER_ID NUMBER NOT NULL,
    -- 화면/업무 항목: 담당자
    MANAGER_ID       NUMBER,
    -- 화면/업무 항목: 출하창고
    WAREHOUSE_ID     NUMBER NOT NULL,
    -- 화면/업무 항목: 프로젝트
    PROJECT_ID       NUMBER,
    -- 화면/업무 항목: 연락처
    CONTACT_NUMBER   VARCHAR2(50),
    -- 화면/업무 항목: 출하예정일
    PLANNED_SHIP_DATE DATE,
    -- 화면/업무 항목: 우편번호
    POSTAL_CODE      VARCHAR2(10),
    -- 화면/업무 항목: 주소
    ADDRESS          VARCHAR2(500),
    -- 화면/업무 항목: 사용자 추가항목
    CUSTOM_DATA      CLOB,
    -- 화면/업무 항목: 진행상태
    PROGRESS_STATUS  VARCHAR2(20) DEFAULT 'OPEN' NOT NULL,
    -- 화면/업무 항목: 적요
    REMARKS          VARCHAR2(1000),
    -- 화면/업무 항목: 최초 등록 담당자
    CREATED_BY       NUMBER,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 최종 수정 담당자
    UPDATED_BY       NUMBER,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SHIPPING_ORDER PRIMARY KEY (SHIPPING_ORDER_ID),
    CONSTRAINT UK_SHIPPING_ORDER_NO UNIQUE (VOUCHER_NO),
    CONSTRAINT FK_SHO_PARTNER FOREIGN KEY (BUSINESS_PARTNER_ID) REFERENCES TB_BUSINESS_PARTNER (BUSINESS_PARTNER_ID),
    CONSTRAINT FK_SHO_MANAGER FOREIGN KEY (MANAGER_ID) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_SHO_WH FOREIGN KEY (WAREHOUSE_ID) REFERENCES TB_WAREHOUSE (WAREHOUSE_ID),
    CONSTRAINT FK_SHO_PROJECT FOREIGN KEY (PROJECT_ID) REFERENCES TB_PROJECT (PROJECT_ID),
    CONSTRAINT FK_SHO_CREATED_BY FOREIGN KEY (CREATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_SHO_UPDATED_BY FOREIGN KEY (UPDATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT CK_SHO_STATUS CHECK (PROGRESS_STATUS IN ('OPEN','PARTIAL','COMPLETED','CANCELLED'))
);

-- 화면 위치: 영업관리 > 출하지시서 > 출하지시서입력
-- 테이블 역할: 출하지시 품목과 지시수량을 행별로 관리한다.
CREATE TABLE TB_SHIPPING_ORDER_ITEM (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 출하지시서 상세행을 구분하는 내부 번호(PK)
    SHIPPING_ORDER_ITEM_ID NUMBER,
    -- 연결 항목: 관련 기준정보 또는 원본 전표 식별번호
    SHIPPING_ORDER_ID NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 행번호
    LINE_NO          NUMBER(5) NOT NULL,
    -- 화면/업무 항목: 품목
    ITEM_ID          NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 품목코드
    ITEM_CODE_SNAP   VARCHAR2(50) NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 품목명
    ITEM_NAME_SNAP   VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 규격
    SPEC_SNAP        VARCHAR2(100),
    -- 화면/업무 항목: 전표 작성 당시 단위
    UNIT_SNAP        VARCHAR2(20),
    -- 화면/업무 항목: 수량
    QUANTITY         NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 적요
    REMARKS          VARCHAR2(1000),
    -- 화면/업무 항목: 사용자 추가항목
    CUSTOM_DATA      CLOB,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SHIPPING_ORDER_ITEM PRIMARY KEY (SHIPPING_ORDER_ITEM_ID),
    CONSTRAINT UK_SHIPPING_ORDER_LINE UNIQUE (SHIPPING_ORDER_ID, LINE_NO),
    CONSTRAINT FK_SHOI_HEADER FOREIGN KEY (SHIPPING_ORDER_ID) REFERENCES TB_SHIPPING_ORDER (SHIPPING_ORDER_ID),
    CONSTRAINT FK_SHOI_ITEM FOREIGN KEY (ITEM_ID) REFERENCES TB_ITEM (ITEM_ID),
    CONSTRAINT CK_SHOI_QTY CHECK (QUANTITY > 0)
);

-- 화면 위치: 영업관리 > 출하지시서입력 > 판매 불러오기
-- 테이블 역할: 판매상세와 출하지시상세의 연결수량을 관리한다.
CREATE TABLE TB_SALE_SHIPPING_LINK (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 판매전표 상세행을 구분하는 내부 번호(PK)
    SALE_ITEM_ID     NUMBER NOT NULL,
    -- DB 관리 항목: 출하지시서 상세행을 구분하는 내부 번호(PK)
    SHIPPING_ORDER_ITEM_ID NUMBER NOT NULL,
    -- 화면/업무 항목: 원본 전표에서 적용한 수량
    APPLIED_QTY      NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SALE_SHIPPING_LINK PRIMARY KEY (SALE_ITEM_ID, SHIPPING_ORDER_ITEM_ID),
    CONSTRAINT FK_SSL_SALE_ITEM FOREIGN KEY (SALE_ITEM_ID) REFERENCES TB_SALE_ITEM (SALE_ITEM_ID),
    CONSTRAINT FK_SSL_SHIP_ORDER_ITEM FOREIGN KEY (SHIPPING_ORDER_ITEM_ID) REFERENCES TB_SHIPPING_ORDER_ITEM (SHIPPING_ORDER_ITEM_ID),
    CONSTRAINT CK_SSL_QTY CHECK (APPLIED_QTY > 0)
);

-- 화면 위치: 영업관리 > 출하 > 출하입력/조회
-- 테이블 역할: 실제 출하 전표의 거래처·창고·연락처·배송지 정보를 관리한다.
CREATE TABLE TB_SHIPMENT (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 출하전표를 구분하는 내부 번호(PK)
    SHIPMENT_ID      NUMBER,
    -- 화면/업무 항목: 전표번호
    VOUCHER_NO       VARCHAR2(30) NOT NULL,
    -- 화면/업무 항목: 실제 출하일자
    SHIPMENT_DATE    DATE NOT NULL,
    -- 화면/업무 항목: 거래처
    BUSINESS_PARTNER_ID NUMBER NOT NULL,
    -- 화면/업무 항목: 담당자
    MANAGER_ID       NUMBER,
    -- 화면/업무 항목: 출하창고
    WAREHOUSE_ID     NUMBER NOT NULL,
    -- 화면/업무 항목: 프로젝트
    PROJECT_ID       NUMBER,
    -- 화면/업무 항목: 연락처
    CONTACT_NUMBER   VARCHAR2(50),
    -- 화면/업무 항목: 우편번호
    POSTAL_CODE      VARCHAR2(10),
    -- 화면/업무 항목: 주소
    ADDRESS          VARCHAR2(500),
    -- 화면/업무 항목: 사용자 추가항목
    CUSTOM_DATA      CLOB,
    -- 화면/업무 항목: 전표상태
    VOUCHER_STATUS   VARCHAR2(20) DEFAULT 'ACTIVE' NOT NULL,
    -- 화면/업무 항목: 적요
    REMARKS          VARCHAR2(1000),
    -- 화면/업무 항목: 최초 등록 담당자
    CREATED_BY       NUMBER,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 최종 수정 담당자
    UPDATED_BY       NUMBER,
    -- 화면/업무 항목: 최종 수정일시
    UPDATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SHIPMENT PRIMARY KEY (SHIPMENT_ID),
    CONSTRAINT UK_SHIPMENT_NO UNIQUE (VOUCHER_NO),
    CONSTRAINT FK_SHIPMENT_PARTNER FOREIGN KEY (BUSINESS_PARTNER_ID) REFERENCES TB_BUSINESS_PARTNER (BUSINESS_PARTNER_ID),
    CONSTRAINT FK_SHIPMENT_MANAGER FOREIGN KEY (MANAGER_ID) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_SHIPMENT_WH FOREIGN KEY (WAREHOUSE_ID) REFERENCES TB_WAREHOUSE (WAREHOUSE_ID),
    CONSTRAINT FK_SHIPMENT_PROJECT FOREIGN KEY (PROJECT_ID) REFERENCES TB_PROJECT (PROJECT_ID),
    CONSTRAINT FK_SHIPMENT_CREATED_BY FOREIGN KEY (CREATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT FK_SHIPMENT_UPDATED_BY FOREIGN KEY (UPDATED_BY) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT CK_SHIPMENT_STATUS CHECK (VOUCHER_STATUS IN ('ACTIVE','CANCELLED'))
);

-- 화면 위치: 영업관리 > 출하 > 출하입력
-- 테이블 역할: 실제 출하 품목과 출하수량을 행별로 관리한다.
CREATE TABLE TB_SHIPMENT_ITEM (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 출하전표 상세행을 구분하는 내부 번호(PK)
    SHIPMENT_ITEM_ID NUMBER,
    -- 연결 항목: 관련 기준정보 또는 원본 전표 식별번호
    SHIPMENT_ID      NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 행번호
    LINE_NO          NUMBER(5) NOT NULL,
    -- 화면/업무 항목: 품목
    ITEM_ID          NUMBER NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 품목코드
    ITEM_CODE_SNAP   VARCHAR2(50) NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 품목명
    ITEM_NAME_SNAP   VARCHAR2(100) NOT NULL,
    -- 화면/업무 항목: 전표 작성 당시 규격
    SPEC_SNAP        VARCHAR2(100),
    -- 화면/업무 항목: 전표 작성 당시 단위
    UNIT_SNAP        VARCHAR2(20),
    -- 화면/업무 항목: 수량
    QUANTITY         NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 적요
    REMARKS          VARCHAR2(1000),
    -- 화면/업무 항목: 사용자 추가항목
    CUSTOM_DATA      CLOB,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SHIPMENT_ITEM PRIMARY KEY (SHIPMENT_ITEM_ID),
    CONSTRAINT UK_SHIPMENT_LINE UNIQUE (SHIPMENT_ID, LINE_NO),
    CONSTRAINT FK_SHIPMENT_ITEM_HDR FOREIGN KEY (SHIPMENT_ID) REFERENCES TB_SHIPMENT (SHIPMENT_ID),
    CONSTRAINT FK_SHIPMENT_ITEM_MST FOREIGN KEY (ITEM_ID) REFERENCES TB_ITEM (ITEM_ID),
    CONSTRAINT CK_SHIPMENT_ITEM_QTY CHECK (QUANTITY > 0)
);

-- 화면 위치: 영업관리 > 출하입력 > 출하지시 불러오기
-- 테이블 역할: 출하지시상세와 실제 출하상세의 연결수량을 관리하여 미출하수량을 계산한다.
CREATE TABLE TB_SHIP_RESULT_LINK (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 출하지시서 상세행을 구분하는 내부 번호(PK)
    SHIPPING_ORDER_ITEM_ID NUMBER NOT NULL,
    -- DB 관리 항목: 출하전표 상세행을 구분하는 내부 번호(PK)
    SHIPMENT_ITEM_ID NUMBER NOT NULL,
    -- 화면/업무 항목: 원본 전표에서 적용한 수량
    APPLIED_QTY      NUMBER(18,4) NOT NULL,
    -- 화면/업무 항목: 최초 등록일시
    CREATED_AT       TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_SHIP_RESULT_LINK PRIMARY KEY (SHIPPING_ORDER_ITEM_ID, SHIPMENT_ITEM_ID),
    CONSTRAINT FK_SRL_ORDER_ITEM FOREIGN KEY (SHIPPING_ORDER_ITEM_ID) REFERENCES TB_SHIPPING_ORDER_ITEM (SHIPPING_ORDER_ITEM_ID),
    CONSTRAINT FK_SRL_SHIPMENT_ITEM FOREIGN KEY (SHIPMENT_ITEM_ID) REFERENCES TB_SHIPMENT_ITEM (SHIPMENT_ITEM_ID),
    CONSTRAINT CK_SRL_QTY CHECK (APPLIED_QTY > 0)
);

-- ============================================================
-- 8. 공통 전표 이력
-- ============================================================

-- 화면 위치: 영업관리 > 공통 전표 이력
-- 테이블 역할: 견적·주문·판매·출하지시·출하 전표의 생성·변경·취소 이력을 관리한다.
CREATE TABLE TB_VOUCHER_HISTORY (
    -- [DB 관리 및 화면 입력 항목]
    -- DB 관리 항목: 전표이력을 구분하는 내부 번호(PK)
    HISTORY_ID       NUMBER,
    -- 화면/업무 항목: 전표유형
    DOCUMENT_TYPE    VARCHAR2(30) NOT NULL,
    -- 연결 항목: 대상 전표 식별번호
    DOCUMENT_ID      NUMBER NOT NULL,
    -- 화면/업무 항목: 작업유형
    ACTION_TYPE      VARCHAR2(20) NOT NULL,
    -- 화면/업무 항목: 변경 전 상태
    BEFORE_STATUS    VARCHAR2(20),
    -- 화면/업무 항목: 변경 후 상태
    AFTER_STATUS     VARCHAR2(20),
    -- 연결 항목: 작업 담당자
    WORKER_ID        NUMBER,
    -- 화면/업무 항목: 작업일시
    WORKED_AT        TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    -- 화면/업무 항목: 작업설명
    DESCRIPTION      VARCHAR2(1000),

    -- [입력값 확인 및 테이블 연결 규칙]
    CONSTRAINT PK_VOUCHER_HISTORY PRIMARY KEY (HISTORY_ID),
    CONSTRAINT FK_HISTORY_WORKER FOREIGN KEY (WORKER_ID) REFERENCES TB_MANAGER (MANAGER_ID),
    CONSTRAINT CK_HISTORY_DOC CHECK (DOCUMENT_TYPE IN ('QUOTATION','SALES_ORDER','SALE','SHIPPING_ORDER','SHIPMENT')),
    CONSTRAINT CK_HISTORY_ACTION CHECK (ACTION_TYPE IN ('CREATE','UPDATE','CANCEL','RESTORE','CONVERT','STATUS'))
);

-- ============================================================
-- 9. 현황 화면용 VIEW
-- ============================================================

-- 화면 위치: 영업관리 > 견적서 > 미주문현황
-- VIEW 역할: 견적수량에서 주문 연결수량을 차감하여 미주문수량을 조회한다.
CREATE OR REPLACE VIEW VW_QUOTATION_UNORDERED AS
SELECT
    Q.QUOTE_ID,
    Q.VOUCHER_NO,
    Q.QUOTE_DATE,
    Q.BUSINESS_PARTNER_ID,
    BP.PARTNER_CODE,
    BP.PARTNER_NAME,
    QI.QUOTE_ITEM_ID,
    QI.ITEM_ID,
    QI.ITEM_CODE_SNAP,
    QI.ITEM_NAME_SNAP,
    QI.SPEC_SNAP,
    QI.QUANTITY AS QUOTE_QTY,
    NVL(L.ORDERED_QTY, 0) AS ORDERED_QTY,
    QI.QUANTITY - NVL(L.ORDERED_QTY, 0) AS UNORDERED_QTY,
    QI.UNIT_PRICE,
    (QI.QUANTITY - NVL(L.ORDERED_QTY, 0)) * QI.UNIT_PRICE AS UNORDERED_SUPPLY_AMOUNT
FROM TB_QUOTATION Q
JOIN TB_BUSINESS_PARTNER BP ON BP.BUSINESS_PARTNER_ID = Q.BUSINESS_PARTNER_ID
JOIN TB_QUOTATION_ITEM QI ON QI.QUOTE_ID = Q.QUOTE_ID
LEFT JOIN (
    SELECT QUOTE_ITEM_ID, SUM(APPLIED_QTY) AS ORDERED_QTY
    FROM TB_QUOTE_ORDER_LINK
    GROUP BY QUOTE_ITEM_ID
) L ON L.QUOTE_ITEM_ID = QI.QUOTE_ITEM_ID
WHERE Q.VOUCHER_STATUS = 'ACTIVE'
  AND QI.QUANTITY > NVL(L.ORDERED_QTY, 0);

-- 화면 위치: 영업관리 > 주문서 > 미판매현황
-- VIEW 역할: 주문수량에서 판매 연결수량을 차감하여 미판매수량을 조회한다.
CREATE OR REPLACE VIEW VW_SALES_ORDER_UNSOLD AS
SELECT
    O.ORDER_ID,
    O.VOUCHER_NO,
    O.ORDER_DATE,
    O.DUE_DATE,
    O.BUSINESS_PARTNER_ID,
    BP.PARTNER_CODE,
    BP.PARTNER_NAME,
    OI.ORDER_ITEM_ID,
    OI.ITEM_ID,
    OI.ITEM_CODE_SNAP,
    OI.ITEM_NAME_SNAP,
    OI.SPEC_SNAP,
    OI.QUANTITY AS ORDER_QTY,
    NVL(L.SOLD_QTY, 0) AS SOLD_QTY,
    OI.QUANTITY - NVL(L.SOLD_QTY, 0) AS UNSOLD_QTY,
    OI.UNIT_PRICE,
    (OI.QUANTITY - NVL(L.SOLD_QTY, 0)) * OI.UNIT_PRICE AS UNSOLD_SUPPLY_AMOUNT
FROM TB_SALES_ORDER O
JOIN TB_BUSINESS_PARTNER BP ON BP.BUSINESS_PARTNER_ID = O.BUSINESS_PARTNER_ID
JOIN TB_SALES_ORDER_ITEM OI ON OI.ORDER_ID = O.ORDER_ID
LEFT JOIN (
    SELECT ORDER_ITEM_ID, SUM(APPLIED_QTY) AS SOLD_QTY
    FROM TB_ORDER_SALE_LINK
    GROUP BY ORDER_ITEM_ID
) L ON L.ORDER_ITEM_ID = OI.ORDER_ITEM_ID
WHERE O.DELETED_YN = 'N'
  AND OI.QUANTITY > NVL(L.SOLD_QTY, 0);

-- 화면 위치: 영업관리 > 출하지시서/출하 > 미출하현황
-- VIEW 역할: 출하지시수량에서 실제 출하수량을 차감하여 미출하수량을 조회한다.
CREATE OR REPLACE VIEW VW_SHIPPING_UNSHIPPED AS
SELECT
    SO.SHIPPING_ORDER_ID,
    SO.VOUCHER_NO,
    SO.SHIPPING_ORDER_DATE,
    SO.PLANNED_SHIP_DATE,
    SO.BUSINESS_PARTNER_ID,
    BP.PARTNER_CODE,
    BP.PARTNER_NAME,
    SI.SHIPPING_ORDER_ITEM_ID,
    SI.ITEM_ID,
    SI.ITEM_CODE_SNAP,
    SI.ITEM_NAME_SNAP,
    SI.SPEC_SNAP,
    SI.QUANTITY AS ORDERED_SHIP_QTY,
    NVL(L.SHIPPED_QTY, 0) AS SHIPPED_QTY,
    SI.QUANTITY - NVL(L.SHIPPED_QTY, 0) AS UNSHIPPED_QTY
FROM TB_SHIPPING_ORDER SO
JOIN TB_BUSINESS_PARTNER BP ON BP.BUSINESS_PARTNER_ID = SO.BUSINESS_PARTNER_ID
JOIN TB_SHIPPING_ORDER_ITEM SI ON SI.SHIPPING_ORDER_ID = SO.SHIPPING_ORDER_ID
LEFT JOIN (
    SELECT SHIPPING_ORDER_ITEM_ID, SUM(APPLIED_QTY) AS SHIPPED_QTY
    FROM TB_SHIP_RESULT_LINK
    GROUP BY SHIPPING_ORDER_ITEM_ID
) L ON L.SHIPPING_ORDER_ITEM_ID = SI.SHIPPING_ORDER_ITEM_ID
WHERE SO.PROGRESS_STATUS <> 'CANCELLED'
  AND SI.QUANTITY > NVL(L.SHIPPED_QTY, 0);

-- 화면 위치: 영업관리 > 판매 > 결제내역자료비교
-- VIEW 역할: 판매Ⅱ 전표 합계와 승인·강제 결제금액을 비교한다.
CREATE OR REPLACE VIEW VW_PAYMENT_COMPARISON AS
SELECT
    S.SALE_ID,
    S.VOUCHER_NO,
    S.SALE_DATE,
    S.BUSINESS_PARTNER_ID,
    BP.PARTNER_CODE,
    BP.PARTNER_NAME,
    S.SUPPLY_AMOUNT AS SALE_SUPPLY_AMOUNT,
    S.VAT_AMOUNT AS SALE_VAT_AMOUNT,
    S.TOTAL_AMOUNT AS SALE_TOTAL_AMOUNT,
    NVL(P.PAYMENT_AMOUNT, 0) AS APPROVED_PAYMENT_AMOUNT,
    S.TOTAL_AMOUNT - NVL(P.PAYMENT_AMOUNT, 0) AS DIFFERENCE_AMOUNT,
    CASE
        WHEN S.TOTAL_AMOUNT = NVL(P.PAYMENT_AMOUNT, 0) THEN 'MATCH'
        ELSE 'MISMATCH'
    END AS MATCH_STATUS
FROM TB_SALE S
JOIN TB_BUSINESS_PARTNER BP ON BP.BUSINESS_PARTNER_ID = S.BUSINESS_PARTNER_ID
LEFT JOIN (
    SELECT SALE_ID, SUM(PAYMENT_AMOUNT) AS PAYMENT_AMOUNT
    FROM TB_PAYMENT
    WHERE PAYMENT_STATUS IN ('APPROVED','FORCED')
    GROUP BY SALE_ID
) P ON P.SALE_ID = S.SALE_ID
WHERE S.SALE_INPUT_TYPE = 'POS'
  AND S.VOUCHER_STATUS = 'ACTIVE';

-- ============================================================
-- 10. 조회 성능용 INDEX
-- ============================================================

CREATE INDEX IX_QUOTE_DATE_PARTNER ON TB_QUOTATION (QUOTE_DATE, BUSINESS_PARTNER_ID);
CREATE INDEX IX_QITEM_ITEM ON TB_QUOTATION_ITEM (ITEM_ID);
CREATE INDEX IX_ORDER_DATE_PARTNER ON TB_SALES_ORDER (ORDER_DATE, BUSINESS_PARTNER_ID);
CREATE INDEX IX_OITEM_ITEM ON TB_SALES_ORDER_ITEM (ITEM_ID);
CREATE INDEX IX_SALE_DATE_PARTNER ON TB_SALE (SALE_DATE, BUSINESS_PARTNER_ID);
CREATE INDEX IX_SALE_WH ON TB_SALE (WAREHOUSE_ID);
CREATE INDEX IX_SITEM_ITEM ON TB_SALE_ITEM (ITEM_ID);
CREATE INDEX IX_QSL_SALE_ITEM ON TB_QUOTE_SALE_LINK (SALE_ITEM_ID);
CREATE INDEX IX_SOL_SALE_ITEM ON TB_SALE_ORIGIN_LINK (SALE_ITEM_ID);
CREATE INDEX IX_PAYMENT_REQ_AT ON TB_PAYMENT (REQUESTED_AT);
CREATE INDEX IX_PAYMENT_STATUS ON TB_PAYMENT (PAYMENT_STATUS);
CREATE INDEX IX_SHO_DATE_PARTNER ON TB_SHIPPING_ORDER (SHIPPING_ORDER_DATE, BUSINESS_PARTNER_ID);
CREATE INDEX IX_SHIPMENT_DATE ON TB_SHIPMENT (SHIPMENT_DATE);
CREATE INDEX IX_STOCK_REF ON TB_STOCK_MOVEMENT (REFERENCE_TYPE, REFERENCE_ID);

/* =========================================================
   11. 구현 규칙(서비스 계층에서 같은 트랜잭션으로 처리)
   =========================================================
   1) 견적 -> 주문: 주문상세 생성 + TB_QUOTE_ORDER_LINK 기록
   2) 주문서출고처리: 판매/판매상세 생성 + TB_ORDER_SALE_LINK 기록
   3) 견적 -> 판매: 판매상세 생성 + TB_QUOTE_SALE_LINK 기록
   4) 기존 판매 -> 신규 판매: 판매상세 생성 + TB_SALE_ORIGIN_LINK 기록
   5) 판매 확정: PROGRESS_STATUS를 CONFIRMED로 변경 + TB_INVENTORY 차감 + TB_STOCK_MOVEMENT 기록
   6) 판매 보류: VOUCHER_STATUS를 HOLD로 변경하고 재고를 차감하지 않음
   7) 판매 취소: 재고 복원 + 반대 부호 STOCK_MOVEMENT 기록
   8) 출하지시: 판매상세 -> TB_SALE_SHIPPING_LINK 기록
   9) 출하: 출하지시상세 -> TB_SHIP_RESULT_LINK 기록
  10) 판매에서 이미 재고를 차감했으면 출하에서 다시 차감하지 않음
  11) 각 LINK의 APPLIED_QTY 합이 원본 상세수량을 초과하지 않도록
      Service에서 SELECT ... FOR UPDATE 후 검증
*/

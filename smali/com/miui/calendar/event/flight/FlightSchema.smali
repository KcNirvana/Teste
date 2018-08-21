.class public Lcom/miui/calendar/event/flight/FlightSchema;
.super Ljava/lang/Object;
.source "FlightSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/event/flight/FlightSchema$AlternateSchema;
    }
.end annotation


# static fields
.field public static final CATEGORY_INLAND_TO_INLAND:I = 0x0

.field public static final CATEGORY_INLAND_TO_INTER:I = 0x1

.field public static final CATEGORY_INLAND_TO_REGION:I = 0x2

.field public static final CATEGORY_INTER_TO_INTER:I = 0x4

.field public static final CATEGORY_REGION_TO_INTER:I = 0x3

.field public static final CATEGORY_UNKNOWN:I = 0x5

.field private static final CHINESE_AIRPORT_CODE_ARRAY:[Ljava/lang/String;

.field private static final FLIGHT_COMPANY:Ljava/lang/String; = "{\n  \"\u4e2d\u56fd\u5357\u65b9\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u5357\u65b9\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u4e1c\u65b9\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u4e1c\u65b9\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u897f\u5357\u822a\u7a7a\u516c\u53f8\": \"\u897f\u5357\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u897f\u5317\u822a\u7a7a\u516c\u53f8\": \"\u897f\u5317\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u5317\u65b9\u822a\u7a7a\u516c\u53f8\": \"\u5317\u65b9\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u65b0\u7586\u822a\u7a7a\u516c\u53f8\": \"\u65b0\u7586\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u4e91\u5357\u822a\u7a7a\u516c\u53f8\": \"\u4e91\u5357\u822a\u7a7a\",\n  \"\u53a6\u95e8\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u53a6\u95e8\u822a\u7a7a\",\n  \"\u4e0a\u6d77\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u4e0a\u6d77\u822a\u7a7a\",\n  \"\u6d77\u5357\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u6d77\u5357\u822a\u7a7a\",\n  \"\u6df1\u5733\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u6df1\u5733\u822a\u7a7a\",\n  \"\u5c71\u4e1c\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u5c71\u4e1c\u822a\u7a7a\",\n  \"\u56db\u5ddd\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u56db\u5ddd\u822a\u7a7a\",\n  \"\u6fb3\u95e8\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u6fb3\u95e8\u822a\u7a7a\",\n  \"\u9999\u6e2f\u56fd\u6cf0\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u56fd\u6cf0\u822a\u7a7a\",\n  \"\u9999\u6e2f\u6e2f\u9f99\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6e2f\u9f99\u822a\u7a7a\",\n  \"\u4e2d\u534e\u822a\u7a7a\u516c\u53f8\": \"\u4e2d\u534e\u822a\u7a7a\",\n  \"\u957f\u8363\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u957f\u8363\u822a\u7a7a\",\n  \"\u590d\u5174\u822a\u7a7a\u8fd0\u8f93\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u590d\u5174\u822a\u7a7a\",\n  \"\u4e1c\u661f\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u4e1c\u661f\u822a\u7a7a\",\n  \"\u5965\u51ef\u822a\u7a7a\u516c\u53f8\": \"\u5965\u51ef\u822a\u7a7a\",\n  \"\u6210\u90fd\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6210\u90fd\u822a\u7a7a\",\n  \"\u6625\u79cb\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6625\u79cb\u822a\u7a7a\",\n  \"\u4e0a\u6d77\u5409\u7965\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u5409\u7965\u822a\u7a7a\",\n  \"\u5317\u4eac\u9996\u90fd\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u9996\u90fd\u822a\u7a7a\",\n  \"\u9999\u6e2f\u7518\u6cc9\u822a\u7a7a\": \"\u7518\u6cc9\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u90ae\u653f\u822a\u7a7a\u516c\u53f8\": \"\u90ae\u653f\u822a\u7a7a\",\n  \"\u6cb3\u5317\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6cb3\u5317\u822a\u7a7a\",\n  \"\u534e\u590f\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u534e\u590f\u822a\u7a7a\",\n  \"\u957f\u57ce\u822a\u7a7a\u6709\u9650\u516c\u53f8(\u8d27\u8fd0)\": \"\u957f\u57ce\u822a\u7a7a\",\n  \"\u897f\u90e8\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u897f\u90e8\u822a\u7a7a\",\n  \"\u91cd\u5e86\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u91cd\u5e86\u822a\u7a7a\",\n  \"\u9999\u6e2f\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u9999\u6e2f\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u8054\u5408\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u8054\u5408\u822a\u7a7a\",\n  \"\u5927\u65b0\u534e\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u5927\u65b0\u534e\u822a\u7a7a\",\n  \"\u4e2d\u4fe1\u901a\u7528\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u4e2d\u4fe1\u901a\u7528\u822a\u7a7a\",\n  \"\u4e91\u5357\u7965\u9e4f\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u7965\u9e4f\u822a\u7a7a\",\n  \"\u5929\u6d25\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u5929\u6d25\u822a\u7a7a\",\n  \"\u7acb\u8363\u822a\u7a7a\u516c\u53f8\": \"\u7acb\u8363\u822a\u7a7a\",\n  \"\u534e\u4fe1\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u534e\u4fe1\u822a\u7a7a\",\n  \"\u53f0\u6e7e\u5fb7\u5b89\u822a\u7a7a\u516c\u53f8\": \"\u53f0\u6e7e\u5fb7\u5b89\u822a\u7a7a\",\n  \"\u9999\u6e2f\u534e\u6c11\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u9999\u6e2f\u534e\u6c11\u822a\u7a7a\",\n  \"\u6fb3\u95e8\u975e\u51e1\u822a\u7a7a\u516c\u53f8\": \"\u6fb3\u95e8\u975e\u51e1\u822a\u7a7a\",\n  \"\u6cb3\u5357\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6cb3\u5357\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u957f\u57ce\u822a\u7a7a\u516c\u53f8\uff08\u5ba2\u8fd0\uff09\": \"\u957f\u57ce\u822a\u7a7a\",\n  \"\u4e2d\u539f\u822a\u7a7a\u516c\u53f8\": \"\u4e2d\u539f\u822a\u7a7a\",\n  \"\u6b66\u6c49\u822a\u7a7a\u516c\u53f8\": \"\u6b66\u6c49\u822a\u7a7a\",\n  \"\u798f\u5efa\u822a\u7a7a\u516c\u53f8\": \"\u798f\u5efa\u822a\u7a7a\",\n  \"\u6d77\u5357\u7701\u822a\u7a7a\u516c\u53f8\": \"\u6d77\u5357\u7701\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u65b0\u534e\u822a\u7a7a\u516c\u53f8\": \"\u65b0\u534e\u822a\u7a7a\",\n  \"\u5e78\u798f\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u5e78\u798f\u822a\u7a7a\",\n  \"\u6606\u660e\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6606\u660e\u822a\u7a7a\",\n  \"\u6d59\u6c5f\u822a\u7a7a\u516c\u53f8\": \"\u6d59\u6c5f\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u6c11\u822a\": \"\u4e2d\u56fd\u6c11\u822a\",\n  \"\u897f\u85cf\u822a\u7a7a\": \"\u897f\u85cf\u822a\u7a7a\",\n  \"\u5fb7\u56fd\u6c49\u838e\u822a\u7a7a\u516c\u53f8\": \"\u6c49\u838e\u822a\u7a7a\",\n  \"\u9a6c\u6765\u897f\u4e9a\u4e9a\u6d32\u822a\u7a7a\u516c\u53f8\": \"\u4e9a\u6d32\u822a\u7a7a\"\n}"

.field private static final IRRELEVANT_WORDS_IN_AIRPORT:[Ljava/lang/String;

.field private static final KEY_ARR_CITY:Ljava/lang/String; = "FlightArr"

.field private static final KEY_DEP_CITY:Ljava/lang/String; = "FlightDep"

.field public static final LOCATION_TYPE_INLAND:I = 0x0

.field public static final LOCATION_TYPE_INTER:I = 0x1

.field public static final LOCATION_TYPE_UNKNOWN:I = -0x1

.field private static final STRING_AIRPORT:Ljava/lang/String; = "\u673a\u573a"

.field private static final TAG:Ljava/lang/String; = "CalThd:D:FlightSchema"

.field private static sChineseAirportCodeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFlightCompanyTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public FlightArr:Ljava/lang/String;

.field public FlightArrAirport:Ljava/lang/String;

.field public FlightArrcode:Ljava/lang/String;

.field public FlightArrtimeDate:Ljava/lang/String;

.field public FlightArrtimePlanDate:Ljava/lang/String;

.field public FlightArrtimeReadyDate:Ljava/lang/String;

.field public FlightCompany:Ljava/lang/String;

.field public FlightDep:Ljava/lang/String;

.field public FlightDepAirport:Ljava/lang/String;

.field public FlightDepcode:Ljava/lang/String;

.field public FlightDeptimeDate:Ljava/lang/String;

.field public FlightDeptimePlanDate:Ljava/lang/String;

.field public FlightDeptimeReadyDate:Ljava/lang/String;

.field public FlightHTerminal:Ljava/lang/String;

.field public FlightNo:Ljava/lang/String;

.field public FlightState:Ljava/lang/String;

.field public FlightTerminal:Ljava/lang/String;

.field public alternate_info:Ljava/lang/String;

.field public dst_timezone:I

.field public fcategory:I

.field public org_timezone:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/calendar/event/flight/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/calendar/event/flight/FlightSchema;->sChineseAirportCodeSet:Ljava/util/HashSet;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "\u6709\u9650"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u80a1\u4efd"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u8d23\u4efb"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u516c\u53f8"

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/calendar/event/flight/FlightSchema;->IRRELEVANT_WORDS_IN_AIRPORT:[Ljava/lang/String;

    const/16 v0, 0xe6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "PEK"

    aput-object v1, v0, v2

    const-string/jumbo v1, "CGQ"

    aput-object v1, v0, v3

    const-string/jumbo v1, "CSX"

    aput-object v1, v0, v4

    const-string/jumbo v1, "CTU"

    aput-object v1, v0, v5

    const-string/jumbo v1, "CKG"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "DLC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "FOC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "CAN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "KWE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "HAK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "XNT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "YLN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "YUA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "XIN"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "HGH"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "HRB"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "HET"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "TNA"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "KMG"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "KHN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "NKG"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "NNG"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "TAO"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "SYX"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "PVG"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "SHE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "SZX"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "SJW"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "TYN"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "TSN"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "URC"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "WNZ"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "WUH"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "XMN"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "XIY"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "CGO"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "AKU"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "AAT"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "AXF"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "RHT"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "AVA"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "AKA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "AQG"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "AOG"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "YIE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "AEB"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "NBS"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "BPX"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "BSD"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "BAV"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "RLK"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "BHY"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "NAY"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "BFU"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "BFJ"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "BPL"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "KJI"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "CGD"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "CIH"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "CZX"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "CHG"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "CIF"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "JUH"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "DLU"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "DDG"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "DCY"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "DQA"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "DAT"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "DAX"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "DYG"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "DIG"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "DSN"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "DOY"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "DNH"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "EJN"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "ENH"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "ERL"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "FUO"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "FUG"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "FYJ"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "KOW"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "GOQ"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "GYS"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "KWL"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "GYU"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "HLD"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "HMI"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "HDG"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "HZG"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "HFE"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "HEK"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "HPG"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "HTN"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "HIA"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "HJJ"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "HHA"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "JGS"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "JGD"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "JMU"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "JGN"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "JIC"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "JDZ"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "JHG"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "JNG"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "JJN"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "JNZ"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "JIU"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "JXA"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "KJH"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "KGT"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "KRY"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "KHG"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "KRL"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "KCA"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "LHW"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "ZGC"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "LXA"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "LYG"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "LLB"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "LJG"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "LNJ"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "LYI"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "HZH"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "LZH"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "LCX"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "LYA"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "LZO"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "LUM"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string/jumbo v2, "NZH"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "MXZ"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string/jumbo v2, "MIG"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v2, "OHE"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string/jumbo v2, "MDG"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string/jumbo v2, "NAO"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string/jumbo v2, "LZN"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string/jumbo v2, "NTG"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string/jumbo v2, "NNY"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string/jumbo v2, "NGB"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "LZY"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "PZI"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "JIQ"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "IQM"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "IQN"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, "SHP"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, "NDG"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "JUZ"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "SWA"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v2, "NGQ"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v2, "RKZ"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v2, "SYM"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "JZH"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "SZV"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, "TCG"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v2, "HYN"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string/jumbo v2, "TVS"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v2, "TCZ"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v2, "THQ"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v2, "TGO"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string/jumbo v2, "TEN"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v2, "TXN"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string/jumbo v2, "TLQ"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "HLH"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string/jumbo v2, "WXN"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string/jumbo v2, "WEF"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v2, "WEH"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string/jumbo v2, "WNH"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v2, "WUA"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string/jumbo v2, "WUX"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string/jumbo v2, "WUS"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string/jumbo v2, "WUZ"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string/jumbo v2, "GXH"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string/jumbo v2, "SIA"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string/jumbo v2, "XFN"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string/jumbo v2, "XIC"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string/jumbo v2, "XIL"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string/jumbo v2, "ACX"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string/jumbo v2, "XNN"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string/jumbo v2, "NLT"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string/jumbo v2, "XUZ"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string/jumbo v2, "ENY"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string/jumbo v2, "YNZ"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string/jumbo v2, "YTY"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string/jumbo v2, "YNJ"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string/jumbo v2, "YNT"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string/jumbo v2, "YBP"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string/jumbo v2, "YIH"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string/jumbo v2, "LDS"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string/jumbo v2, "YIC"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string/jumbo v2, "INC"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string/jumbo v2, "YIN"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string/jumbo v2, "YIW"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string/jumbo v2, "LLF"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string/jumbo v2, "UYN"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string/jumbo v2, "YCU"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string/jumbo v2, "YUS"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string/jumbo v2, "ZQZ"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string/jumbo v2, "YZY"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string/jumbo v2, "ZHA"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string/jumbo v2, "ZAT"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string/jumbo v2, "ZHY"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string/jumbo v2, "HSN"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string/jumbo v2, "ZUH"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string/jumbo v2, "ZYI"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string/jumbo v2, "AYN"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string/jumbo v2, "CNI"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string/jumbo v2, "DZU"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string/jumbo v2, "FYN"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string/jumbo v2, "GHN"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string/jumbo v2, "LHK"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string/jumbo v2, "HNY"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string/jumbo v2, "ZMY"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string/jumbo v2, "HUZ"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string/jumbo v2, "KNC"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string/jumbo v2, "JIL"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string/jumbo v2, "CHW"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string/jumbo v2, "LZD"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string/jumbo v2, "LIA"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string/jumbo v2, "LXI"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string/jumbo v2, "PNJ"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string/jumbo v2, "RUG"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string/jumbo v2, "SHF"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string/jumbo v2, "SXJ"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string/jumbo v2, "SZO"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string/jumbo v2, "HSC"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string/jumbo v2, "SHS"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string/jumbo v2, "FUD"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string/jumbo v2, "TNH"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string/jumbo v2, "WHU"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string/jumbo v2, "XEN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/calendar/event/flight/FlightSchema;->CHINESE_AIRPORT_CODE_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCorrectFlight(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_5

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v7, "FlightDep"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "FlightArr"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v6, 0x1

    :cond_1
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    const-string/jumbo v7, "CalThd:D:FlightSchema"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCorrectFlight(): index:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/calendar/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "CalThd:D:FlightSchema"

    const-string/jumbo v8, "getCorrectFlight(): CAN NOT match any one, return array[0]"

    invoke-static {v7, v8}, Lcom/miui/calendar/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v7, "CalThd:D:FlightSchema"

    const-string/jumbo v8, "getCorrectFlight()"

    invoke-static {v7, v8, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static initAirportCodeSet()V
    .locals 3

    sget-object v1, Lcom/miui/calendar/event/flight/FlightSchema;->sChineseAirportCodeSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/miui/calendar/event/flight/FlightSchema;->CHINESE_AIRPORT_CODE_ARRAY:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/miui/calendar/event/flight/FlightSchema;->sChineseAirportCodeSet:Ljava/util/HashSet;

    sget-object v2, Lcom/miui/calendar/event/flight/FlightSchema;->CHINESE_AIRPORT_CODE_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static initFlightCompanyTable()V
    .locals 3

    sget-object v0, Lcom/miui/calendar/event/flight/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v1, "{\n  \"\u4e2d\u56fd\u5357\u65b9\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u5357\u65b9\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u4e1c\u65b9\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u4e1c\u65b9\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u897f\u5357\u822a\u7a7a\u516c\u53f8\": \"\u897f\u5357\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u897f\u5317\u822a\u7a7a\u516c\u53f8\": \"\u897f\u5317\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u5317\u65b9\u822a\u7a7a\u516c\u53f8\": \"\u5317\u65b9\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u65b0\u7586\u822a\u7a7a\u516c\u53f8\": \"\u65b0\u7586\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u4e91\u5357\u822a\u7a7a\u516c\u53f8\": \"\u4e91\u5357\u822a\u7a7a\",\n  \"\u53a6\u95e8\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u53a6\u95e8\u822a\u7a7a\",\n  \"\u4e0a\u6d77\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u4e0a\u6d77\u822a\u7a7a\",\n  \"\u6d77\u5357\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u6d77\u5357\u822a\u7a7a\",\n  \"\u6df1\u5733\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u6df1\u5733\u822a\u7a7a\",\n  \"\u5c71\u4e1c\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u5c71\u4e1c\u822a\u7a7a\",\n  \"\u56db\u5ddd\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u56db\u5ddd\u822a\u7a7a\",\n  \"\u6fb3\u95e8\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u6fb3\u95e8\u822a\u7a7a\",\n  \"\u9999\u6e2f\u56fd\u6cf0\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u56fd\u6cf0\u822a\u7a7a\",\n  \"\u9999\u6e2f\u6e2f\u9f99\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6e2f\u9f99\u822a\u7a7a\",\n  \"\u4e2d\u534e\u822a\u7a7a\u516c\u53f8\": \"\u4e2d\u534e\u822a\u7a7a\",\n  \"\u957f\u8363\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u957f\u8363\u822a\u7a7a\",\n  \"\u590d\u5174\u822a\u7a7a\u8fd0\u8f93\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u590d\u5174\u822a\u7a7a\",\n  \"\u4e1c\u661f\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u4e1c\u661f\u822a\u7a7a\",\n  \"\u5965\u51ef\u822a\u7a7a\u516c\u53f8\": \"\u5965\u51ef\u822a\u7a7a\",\n  \"\u6210\u90fd\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6210\u90fd\u822a\u7a7a\",\n  \"\u6625\u79cb\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6625\u79cb\u822a\u7a7a\",\n  \"\u4e0a\u6d77\u5409\u7965\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u5409\u7965\u822a\u7a7a\",\n  \"\u5317\u4eac\u9996\u90fd\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u9996\u90fd\u822a\u7a7a\",\n  \"\u9999\u6e2f\u7518\u6cc9\u822a\u7a7a\": \"\u7518\u6cc9\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u90ae\u653f\u822a\u7a7a\u516c\u53f8\": \"\u90ae\u653f\u822a\u7a7a\",\n  \"\u6cb3\u5317\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6cb3\u5317\u822a\u7a7a\",\n  \"\u534e\u590f\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u534e\u590f\u822a\u7a7a\",\n  \"\u957f\u57ce\u822a\u7a7a\u6709\u9650\u516c\u53f8(\u8d27\u8fd0)\": \"\u957f\u57ce\u822a\u7a7a\",\n  \"\u897f\u90e8\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u897f\u90e8\u822a\u7a7a\",\n  \"\u91cd\u5e86\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u91cd\u5e86\u822a\u7a7a\",\n  \"\u9999\u6e2f\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u9999\u6e2f\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u8054\u5408\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u8054\u5408\u822a\u7a7a\",\n  \"\u5927\u65b0\u534e\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u5927\u65b0\u534e\u822a\u7a7a\",\n  \"\u4e2d\u4fe1\u901a\u7528\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u4e2d\u4fe1\u901a\u7528\u822a\u7a7a\",\n  \"\u4e91\u5357\u7965\u9e4f\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u7965\u9e4f\u822a\u7a7a\",\n  \"\u5929\u6d25\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u5929\u6d25\u822a\u7a7a\",\n  \"\u7acb\u8363\u822a\u7a7a\u516c\u53f8\": \"\u7acb\u8363\u822a\u7a7a\",\n  \"\u534e\u4fe1\u822a\u7a7a\u80a1\u4efd\u6709\u9650\u516c\u53f8\": \"\u534e\u4fe1\u822a\u7a7a\",\n  \"\u53f0\u6e7e\u5fb7\u5b89\u822a\u7a7a\u516c\u53f8\": \"\u53f0\u6e7e\u5fb7\u5b89\u822a\u7a7a\",\n  \"\u9999\u6e2f\u534e\u6c11\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u9999\u6e2f\u534e\u6c11\u822a\u7a7a\",\n  \"\u6fb3\u95e8\u975e\u51e1\u822a\u7a7a\u516c\u53f8\": \"\u6fb3\u95e8\u975e\u51e1\u822a\u7a7a\",\n  \"\u6cb3\u5357\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6cb3\u5357\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u957f\u57ce\u822a\u7a7a\u516c\u53f8\uff08\u5ba2\u8fd0\uff09\": \"\u957f\u57ce\u822a\u7a7a\",\n  \"\u4e2d\u539f\u822a\u7a7a\u516c\u53f8\": \"\u4e2d\u539f\u822a\u7a7a\",\n  \"\u6b66\u6c49\u822a\u7a7a\u516c\u53f8\": \"\u6b66\u6c49\u822a\u7a7a\",\n  \"\u798f\u5efa\u822a\u7a7a\u516c\u53f8\": \"\u798f\u5efa\u822a\u7a7a\",\n  \"\u6d77\u5357\u7701\u822a\u7a7a\u516c\u53f8\": \"\u6d77\u5357\u7701\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u65b0\u534e\u822a\u7a7a\u516c\u53f8\": \"\u65b0\u534e\u822a\u7a7a\",\n  \"\u5e78\u798f\u822a\u7a7a\u6709\u9650\u8d23\u4efb\u516c\u53f8\": \"\u5e78\u798f\u822a\u7a7a\",\n  \"\u6606\u660e\u822a\u7a7a\u6709\u9650\u516c\u53f8\": \"\u6606\u660e\u822a\u7a7a\",\n  \"\u6d59\u6c5f\u822a\u7a7a\u516c\u53f8\": \"\u6d59\u6c5f\u822a\u7a7a\",\n  \"\u4e2d\u56fd\u6c11\u822a\": \"\u4e2d\u56fd\u6c11\u822a\",\n  \"\u897f\u85cf\u822a\u7a7a\": \"\u897f\u85cf\u822a\u7a7a\",\n  \"\u5fb7\u56fd\u6c49\u838e\u822a\u7a7a\u516c\u53f8\": \"\u6c49\u838e\u822a\u7a7a\",\n  \"\u9a6c\u6765\u897f\u4e9a\u4e9a\u6d32\u822a\u7a7a\u516c\u53f8\": \"\u4e9a\u6d32\u822a\u7a7a\"\n}"

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/miui/calendar/event/flight/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public adjustFlightSchema(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/miui/calendar/event/flight/FlightSchema;->initFlightCompanyTable()V

    invoke-static {}, Lcom/miui/calendar/event/flight/FlightSchema;->initAirportCodeSet()V

    iget-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDep:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDep:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArr:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArr:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    const-string/jumbo v2, "\u673a\u573a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u673a\u573a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    const-string/jumbo v2, "\u673a\u573a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u673a\u573a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/miui/calendar/event/flight/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightCompany:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/miui/calendar/event/flight/FlightSchema;->sFlightCompanyTable:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightCompany:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightCompany:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/miui/calendar/event/flight/FlightSchema;->IRRELEVANT_WORDS_IN_AIRPORT:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightCompany:Ljava/lang/String;

    sget-object v2, Lcom/miui/calendar/event/flight/FlightSchema;->IRRELEVANT_WORDS_IN_AIRPORT:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightCompany:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFlightArrType()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/miui/calendar/event/flight/FlightSchema;->initAirportCodeSet()V

    sget-object v2, Lcom/miui/calendar/event/flight/FlightSchema;->sChineseAirportCodeSet:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getFlightDepType()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/miui/calendar/event/flight/FlightSchema;->initAirportCodeSet()V

    sget-object v2, Lcom/miui/calendar/event/flight/FlightSchema;->sChineseAirportCodeSet:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDepcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isFlightSchemaValid()Z
    .locals 2

    iget v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->fcategory:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightCompany:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDepcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDeptimePlanDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrtimePlanDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDep:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "CalThd:D:FlightSchema"

    const-string/jumbo v1, "isFlightSchemaValid(): flight schema INVALID"

    invoke-static {v0, v1}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

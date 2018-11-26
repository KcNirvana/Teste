.class final enum Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

.field public static final enum STATUS_ERROR:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

.field public static final enum STATUS_FINISH:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

.field public static final enum STATUS_GET_ACCESS_TOKEN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

.field public static final enum STATUS_GET_BALANCE_INFO:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

.field public static final enum STATUS_GET_MOBILE_NUMBER:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

.field public static final enum STATUS_GET_TRAFFIC_INFO:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

.field public static final enum STATUS_LOGIN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const-string/jumbo v1, "STATUS_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_ERROR:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const-string/jumbo v1, "STATUS_GET_ACCESS_TOKEN"

    invoke-direct {v0, v1, v4}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_ACCESS_TOKEN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const-string/jumbo v1, "STATUS_GET_MOBILE_NUMBER"

    invoke-direct {v0, v1, v5}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_MOBILE_NUMBER:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const-string/jumbo v1, "STATUS_LOGIN"

    invoke-direct {v0, v1, v6}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_LOGIN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const-string/jumbo v1, "STATUS_GET_TRAFFIC_INFO"

    invoke-direct {v0, v1, v7}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_TRAFFIC_INFO:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const-string/jumbo v1, "STATUS_GET_BALANCE_INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_BALANCE_INFO:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const-string/jumbo v1, "STATUS_FINISH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_FINISH:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_ERROR:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_ACCESS_TOKEN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_MOBILE_NUMBER:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_LOGIN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_TRAFFIC_INFO:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_BALANCE_INFO:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_FINISH:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->$VALUES:[Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;
    .locals 1

    const-class v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->$VALUES:[Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    return-object v0
.end method

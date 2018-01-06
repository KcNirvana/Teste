.class public Lcom/miui/weather2/structures/BaseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISPLAY_MENU:Ljava/lang/String; = "display_menu"

.field public static final EXPERIMENT_AD_A:Ljava/lang/String; = "5"

.field public static final EXPERIMENT_AD_B:Ljava/lang/String; = "6"

.field public static final EXPERIMENT_AD_C:Ljava/lang/String; = "7"

.field public static final INDEX_CAR:Ljava/lang/String; = "carWash"

.field public static final INDEX_CLOTH:Ljava/lang/String; = "clothing"

.field public static final INDEX_RESTRICTION:Ljava/lang/String; = "restriction"

.field public static final INDEX_SPORTS:Ljava/lang/String; = "sports"

.field public static final INDEX_UMBRELLA:Ljava/lang/String; = "umbrella"

.field public static final INDEX_UV:Ljava/lang/String; = "uvINDEX"

.field public static final LINK_TYPE_A:Ljava/lang/String; = "1"

.field public static final LINK_TYPE_B:Ljava/lang/String; = "2"

.field public static final LINK_TYPE_C:Ljava/lang/String; = "3"

.field public static final LINK_TYPE_D:Ljava/lang/String; = "4"

.field public static final LINK_TYPE_E:Ljava/lang/String; = "5"

.field public static final REQUEST_SUCCESS_FLAG:Ljava/lang/String; = "0"

.field public static final TEMPLATE_A:Ljava/lang/String; = "11"

.field public static final TEMPLATE_AD_IMAGE:Ljava/lang/String; = "3.9"

.field public static final TEMPLATE_AD_TEXT:Ljava/lang/String; = "3.10"

.field public static final TEMPLATE_AD_WITHOUT_BUTTON:Ljava/lang/String; = "3.21"

.field public static final TEMPLATE_AD_WITH_BUTTON:Ljava/lang/String; = "3.24"

.field public static final TEMPLATE_B:Ljava/lang/String; = "12"

.field public static final TEMPLATE_C:Ljava/lang/String; = "31"

.field public static final TEMPLATE_D:Ljava/lang/String; = "112"

.field public static final TEMPLATE_HORIZONTAL:Ljava/lang/String; = "1"

.field public static final TEMPLATE_TOPIC_IMAGE:Ljava/lang/String; = "112"

.field public static final TEMPLATE_TOPIC_MEILISHUO:Ljava/lang/String; = "0"

.field public static final TEMPLATE_TOPIC_MIFAMILY:Ljava/lang/String; = "114"

.field public static final TEMPLATE_TOPIC_TEXT:Ljava/lang/String; = "113"

.field public static final TEMPLATE_TOPIC_TOPIC:Ljava/lang/String; = "1"

.field public static final TEMPLATE_TOPIC_VOTE:Ljava/lang/String; = "115"

.field public static final TEMPLATE_VERTICAL:Ljava/lang/String; = "2"

.field public static final TYPE_AD:I = 0x1

.field public static final TYPE_AD_NEW:Ljava/lang/String; = "7"

.field public static final TYPE_ALERT_AD_NEW:Ljava/lang/String; = "10"

.field public static final TYPE_INDEX:I = 0x2

.field public static final TYPE_INDEX_NEW:Ljava/lang/String; = "6"

.field public static final TYPE_INFO:I = 0x4

.field public static final TYPE_INFO_NEW:Ljava/lang/String; = "3"

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_MIFAMILY:Ljava/lang/String; = "8"

.field public static final TYPE_TOPIC:I = 0xb

.field public static final TYPE_TOPIC_NEW:Ljava/lang/String; = "1"

.field public static final TYPE_VOTE_NEW:Ljava/lang/String; = "2"


# instance fields
.field public mCornerTip:Ljava/lang/String;

.field public mDataId:Ljava/lang/String;

.field public mExtra:Ljava/lang/String;

.field public mExtraUrl:Ljava/lang/String;

.field public mImageUrl:Ljava/lang/String;

.field public mIndexType:Ljava/lang/String;

.field public mNum:I

.field public mStatKey:Ljava/lang/String;

.field public mSummary:Ljava/lang/String;

.field public mTemplate:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mType:I

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/weather2/structures/BaseInfo;->mType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", template = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mTemplate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", summary = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mExtraUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mIndexType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/BaseInfo;->mStatKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

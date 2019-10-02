.class public Lcom/miui/video/common/feed/entity/TinyCardEntity;
.super Lcom/miui/video/common/feed/entity/CoreEntity;
.source "TinyCardEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;,
        Lcom/miui/video/common/feed/entity/TinyCardEntity$FeedbackBody;
    }
.end annotation


# static fields
.field public static final HINTTYPE_0:I = 0x0

.field public static final HINTTYPE_1:I = 0x1

.field public static final HINTTYPE_2:I = 0x2

.field public static final IITEM_TYPE_AD:Ljava/lang/String; = "ad"

.field public static final ITEM_TYPE_LONG_VIDEO:Ljava/lang/String; = "longvideo"

.field public static final ITEM_TYPE_PLAYLIST:Ljava/lang/String; = "playlist"

.field public static final ITEM_TYPE_SHORT_VIDEO:Ljava/lang/String; = "shortvideo"

.field public static final ITEM_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final LAYOUT_SUBSCRIBED_VIDEO:I = 0x4b

.field public static final RESULT_FALSE:I = 0x0

.field public static final RESULT_TRUE:I = 0x1

.field public static final SHOW_0:I = 0x0

.field public static final SHOW_1:I = 0x1

.field public static final TINY_AJAX_KEY:Ljava/lang/String; = "ajax_key"

.field public static final TINY_AUTHOR_NAME:Ljava/lang/String; = "author_name"

.field public static final TINY_AUTHOR_PROFILE:Ljava/lang/String; = "author_profile"

.field public static final TINY_AUTHOR_TARGET:Ljava/lang/String; = "author_target"

.field public static final TINY_CARD_CP:Ljava/lang/String; = "cp"

.field public static final TINY_CARD_CP_ICON:Ljava/lang/String; = "cp_icon"

.field public static final TINY_CHECKED:Ljava/lang/String; = "checked"

.field public static final TINY_CORNER_BOTTOM:Ljava/lang/String; = "corner_bottom"

.field public static final TINY_CORNER_TOP:Ljava/lang/String; = "corner_top"

.field public static final TINY_DESC:Ljava/lang/String; = "desc"

.field public static final TINY_DURATION:Ljava/lang/String; = "duration"

.field public static final TINY_END_TIME:Ljava/lang/String; = "end_time"

.field public static final TINY_EXTRA_DATA:Ljava/lang/String; = "unit_ext_data"

.field public static final TINY_FEEDBACK:Ljava/lang/String; = "feedback"

.field public static final TINY_GIF:Ljava/lang/String; = ".gif"

.field public static final TINY_HASVIDEO:Ljava/lang/String; = "has_video"

.field public static final TINY_HINT_BOTTOM:Ljava/lang/String; = "hint_bottom"

.field public static final TINY_HINT_TOP:Ljava/lang/String; = "hint_top"

.field public static final TINY_HINT_TYPE:Ljava/lang/String; = "hint_type"

.field public static final TINY_ID:Ljava/lang/String; = "id"

.field public static final TINY_IMAGE_LIST:Ljava/lang/String; = "image_list"

.field public static final TINY_IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final TINY_IMAGE_URL_1:Ljava/lang/String; = "image_url_1"

.field public static final TINY_LIKE_COUNT:Ljava/lang/String; = "like_count"

.field public static final TINY_LOCATION:Ljava/lang/String; = "location"

.field public static final TINY_NAME:Ljava/lang/String; = "name"

.field public static final TINY_NATIVE_AD:Ljava/lang/String; = "native_ad"

.field public static final TINY_START_TIME:Ljava/lang/String; = "start_time"

.field public static final TINY_SUB_TITLE:Ljava/lang/String; = "sub_title"

.field public static final TINY_TARGET:Ljava/lang/String; = "target"

.field public static final TINY_TARGET_ADDITION:Ljava/lang/String; = "target_report"

.field public static final TINY_TITLE:Ljava/lang/String; = "title"

.field public static final TINY_TOPIC:Ljava/lang/String; = "topic"

.field public static final TINY_TOP_LEFT_LOGO:Ljava/lang/String; = "top_left_logo"

.field public static final TINY_TOP_RIGHT_LOGO:Ljava/lang/String; = "top_right_logo"

.field public static final TINY_TYPE:Ljava/lang/String; = "type"

.field public static final TINY_VIDEO_URL:Ljava/lang/String; = "video_url"

.field public static final TYPE_CAROUSEL_HEADER:Ljava/lang/String; = "carousel_header"

.field public static final TYPE_SUBSCRIBED_VIDEO:Ljava/lang/String; = "subscribed_video"

.field public static parseStringList:Lcom/miui/video/framework/utils/JsonUtils$IParseJsonArrayEachListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/framework/utils/JsonUtils$IParseJsonArrayEachListener<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private ajaxKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ajax_key"
    .end annotation
.end field

.field public authorId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author_id"
    .end annotation
.end field

.field public authorName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author_name"
    .end annotation
.end field

.field public authorProfile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author_icon"
    .end annotation
.end field

.field public authorTarget:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author_target"
    .end annotation
.end field

.field private cornerBottom:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "corner_bottom"
    .end annotation
.end field

.field private cornerTop:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "corner_top"
    .end annotation
.end field

.field public cp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cp"
    .end annotation
.end field

.field public cp_icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cp_icon"
    .end annotation
.end field

.field private desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public duration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private eid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eid"
    .end annotation
.end field

.field private empty:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "empty"
    .end annotation
.end field

.field private endTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_time"
    .end annotation
.end field

.field private extraData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unit_ext_data"
    .end annotation
.end field

.field private feedBack:Lorg/json/JSONObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feedback"
    .end annotation
.end field

.field private fixed:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed"
    .end annotation
.end field

.field private gmtPublish:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gmt_publish"
    .end annotation
.end field

.field private gmtPublishText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gmt_publish_text"
    .end annotation
.end field

.field private gmtSubscribe:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gmt_subscribe"
    .end annotation
.end field

.field private groupName:Ljava/lang/String;

.field private hasVideo:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_video"
    .end annotation
.end field

.field private hintBottom:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hint_bottom"
    .end annotation
.end field

.field private hintTop:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hint_top"
    .end annotation
.end field

.field private hintType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hint_type"
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url"
    .end annotation
.end field

.field private imageUrl1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url_1"
    .end annotation
.end field

.field private isChecked:Z

.field private isGif:Z

.field private isNew:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_new"
    .end annotation
.end field

.field private isPlayed:Z

.field private item_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_id"
    .end annotation
.end field

.field private item_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_type"
    .end annotation
.end field

.field private kvList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kv_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;",
            ">;"
        }
    .end annotation
.end field

.field public likeCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "like_num"
    .end annotation
.end field

.field private transient localExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private localImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "local_image_url"
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
    .end annotation
.end field

.field private matchList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "match"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private max:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max"
    .end annotation
.end field

.field private min:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min"
    .end annotation
.end field

.field private playInfoList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_info"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/PlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private playProgress:J

.field private playlist_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playlist_id"
    .end annotation
.end field

.field public position:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field private rec_channel_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rec_channel_id"
    .end annotation
.end field

.field private redPoint:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "red_point"
    .end annotation
.end field

.field private roleType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "role_type"
    .end annotation
.end field

.field private save_time:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "save_time"
    .end annotation
.end field

.field private selected:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selected"
    .end annotation
.end field

.field private startTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
    .end annotation
.end field

.field private subChannel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sub_channel"
    .end annotation
.end field

.field private subTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sub_title"
    .end annotation
.end field

.field private subscribeCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscribe_count"
    .end annotation
.end field

.field private subscribeCountText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscribe_count_text"
    .end annotation
.end field

.field private subscribe_status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscribe_status"
    .end annotation
.end field

.field private subscribed:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscribed"
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private topLeftLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upper_left_corner"
    .end annotation
.end field

.field private topRightLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upper_right_corner"
    .end annotation
.end field

.field private topic:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private videoCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_count"
    .end annotation
.end field

.field private videoCountText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_count_text"
    .end annotation
.end field

.field private videoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_url"
    .end annotation
.end field

.field private viewCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "view_count"
    .end annotation
.end field

.field private viewCountText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "view_count_text"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/common/feed/entity/TinyCardEntity$1;

    invoke-direct {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity$1;-><init>()V

    sput-object v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->parseStringList:Lcom/miui/video/framework/utils/JsonUtils$IParseJsonArrayEachListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->localExtras:Ljava/util/Map;

    return-void
.end method

.method public static parseTinyCardEntity(Lorg/json/JSONObject;)Lcom/miui/video/common/feed/entity/TinyCardEntity;
    .locals 4

    new-instance v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setId(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTitle(Ljava/lang/String;)V

    const-string v1, "sub_title"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSubTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Lcom/miui/video/framework/base/entity/OperatorUtils;->addOrValue(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/framework/base/entity/OperatorUtils;->addOrValue(Lcom/miui/video/framework/base/ui/BaseUIEntity;I)V

    :goto_0
    const-string v1, "topic"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTopic(Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setDesc(Ljava/lang/String;)V

    const-string v1, "image_url"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setGif(Z)V

    :cond_1
    const-string v1, "image_url_1"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setImageUrl1(Ljava/lang/String;)V

    const-string v1, "hint_type"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setHintType(I)V

    const-string v1, "hint_top"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setHintTop(Ljava/lang/String;)V

    const-string v1, "hint_bottom"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setHintBottom(Ljava/lang/String;)V

    const-string v1, "top_left_logo"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTopLeftLogo(Ljava/lang/String;)V

    const-string v1, "top_right_logo"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTopRightLogo(Ljava/lang/String;)V

    const-string v1, "corner_top"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setCornerTop(Ljava/lang/String;)V

    const-string v1, "corner_bottom"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setCornerBottom(Ljava/lang/String;)V

    const-string v1, "has_video"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setHasVideo(Z)V

    const-string v1, "video_url"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setVideoUrl(Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTarget(Ljava/lang/String;)V

    const-string v1, "ajax_key"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setAjaxKey(Ljava/lang/String;)V

    const-string v1, "start_time"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setStartTime(J)V

    const-string v1, "end_time"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setEndTime(J)V

    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setDuration(J)V

    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setType(Ljava/lang/String;)V

    const-string v1, "unit_ext_data"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setExtraData(Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setLocation(Ljava/lang/String;)V

    const-string v1, "cp"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setCp(Ljava/lang/String;)V

    const-string v1, "cp_icon"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setCp_icon(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subscribed_video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "author_name"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setAuthorName(Ljava/lang/String;)V

    const-string v1, "author_profile"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setAuthorProfile(Ljava/lang/String;)V

    const-string v1, "like_count"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setLikeCount(I)V

    const-string v1, "author_target"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorTarget:Ljava/lang/String;

    :cond_2
    const-string v1, "target_report"

    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/JsonUtils;->isNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "target_report"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    sget-object v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;->parseStringList:Lcom/miui/video/framework/utils/JsonUtils$IParseJsonArrayEachListener;

    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/utils/JsonUtils;->parseJsonArrayEach(Lorg/json/JSONArray;Ljava/lang/Object;Lcom/miui/video/framework/utils/JsonUtils$IParseJsonArrayEachListener;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v2, "TinyCardEntity"

    invoke-static {v2, p0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTargetAddition(Ljava/util/List;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;->destroy()V

    return-void
.end method

.method public getAjaxKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->ajaxKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorProfile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerBottom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->cornerBottom:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerTop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->cornerTop:Ljava/lang/String;

    return-object v0
.end method

.method public getCp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->cp:Ljava/lang/String;

    return-object v0
.end method

.method public getCp_icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->cp_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    return-wide v0
.end method

.method public getEid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->eid:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->endTime:J

    return-wide v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->localExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedBack()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->feedBack:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFixed()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->fixed:I

    return v0
.end method

.method public getGmtPublish()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->gmtPublish:J

    return-wide v0
.end method

.method public getGmtPublishText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->gmtPublishText:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtSubscribe()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->gmtSubscribe:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getHasVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->hasVideo:Z

    return v0
.end method

.method public getHintBottom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->hintBottom:Ljava/lang/String;

    return-object v0
.end method

.method public getHintTop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->hintTop:Ljava/lang/String;

    return-object v0
.end method

.method public getHintType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->hintType:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->imageUrl1:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNew()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isNew:I

    return v0
.end method

.method public getItem_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->item_id:Ljava/lang/String;

    return-object v0
.end method

.method public getItem_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->item_type:Ljava/lang/String;

    return-object v0
.end method

.method public getKvList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->kvList:Ljava/util/List;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->likeCount:I

    return v0
.end method

.method public getLocalImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->localImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLogTime(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->logTimes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->logTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->logTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getMatchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->matchList:Ljava/util/List;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->min:I

    return v0
.end method

.method public getPlayInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/PlayInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->playInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getPlayProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->playProgress:J

    return-wide v0
.end method

.method public getPlayProgressPercentage()I
    .locals 4

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->playProgress:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->playProgress:J

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->playlist_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRec_channel_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->rec_channel_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRedPoint()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->redPoint:I

    return v0
.end method

.method public getRoleType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->roleType:I

    return v0
.end method

.method public getSave_time()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->save_time:J

    return-wide v0
.end method

.method public getSelected()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->selected:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->startTime:J

    return-wide v0
.end method

.method public getSubChannel()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subChannel:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribeCount()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subscribeCount:J

    return-wide v0
.end method

.method public getSubscribeCountText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subscribeCountText:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribe_status()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subscribe_status:I

    return v0
.end method

.method public getSubscribed()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subscribed:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopLeftLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->topLeftLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getTopRightLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->topRightLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->videoCount:I

    return v0
.end method

.method public getVideoCountText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->videoCountText:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->viewCount:J

    return-wide v0
.end method

.method public getViewCountText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->viewCountText:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isChecked:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->empty:Z

    return v0
.end method

.method public isGif()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isGif:Z

    return v0
.end method

.method public isPlayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isPlayed:Z

    return v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->localExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAjaxKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->ajaxKey:Ljava/lang/String;

    return-void
.end method

.method public setAuthorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorId:Ljava/lang/String;

    return-void
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorName:Ljava/lang/String;

    return-void
.end method

.method public setAuthorProfile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorProfile:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isChecked:Z

    return-void
.end method

.method public setCornerBottom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->cornerBottom:Ljava/lang/String;

    return-void
.end method

.method public setCornerTop(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->cornerTop:Ljava/lang/String;

    return-void
.end method

.method public setCp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->cp:Ljava/lang/String;

    return-void
.end method

.method public setCp_icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->cp_icon:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->desc:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    return-void
.end method

.method public setEid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->eid:Ljava/lang/String;

    return-void
.end method

.method public setEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->empty:Z

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->endTime:J

    return-void
.end method

.method public setExtraData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->extraData:Ljava/lang/String;

    return-void
.end method

.method public setFeedBack(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->feedBack:Lorg/json/JSONObject;

    return-void
.end method

.method public setFixed(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->fixed:I

    return-void
.end method

.method public setGif(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isGif:Z

    return-void
.end method

.method public setGmtPublish(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->gmtPublish:J

    return-void
.end method

.method public setGmtPublishText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->gmtPublishText:Ljava/lang/String;

    return-void
.end method

.method public setGmtSubscribe(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->gmtSubscribe:J

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setHasVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->hasVideo:Z

    return-void
.end method

.method public setHintBottom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->hintBottom:Ljava/lang/String;

    return-void
.end method

.method public setHintTop(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->hintTop:Ljava/lang/String;

    return-void
.end method

.method public setHintType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->hintType:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->imageList:Ljava/util/List;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->imageUrl1:Ljava/lang/String;

    return-void
.end method

.method public setIsNew(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isNew:I

    return-void
.end method

.method public setItem_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->item_id:Ljava/lang/String;

    return-void
.end method

.method public setItem_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->item_type:Ljava/lang/String;

    return-void
.end method

.method public setKvList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->kvList:Ljava/util/List;

    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->likeCount:I

    return-void
.end method

.method public setLocalImageUrl(Ljava/lang/String;)Lcom/miui/video/common/feed/entity/TinyCardEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->localImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->location:Ljava/lang/String;

    return-void
.end method

.method public setLogTime(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->logTimes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->logTimes:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->logTimes:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMatchList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->matchList:Ljava/util/List;

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->min:I

    return-void
.end method

.method public setPlayInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/PlayInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->playInfoList:Ljava/util/List;

    return-void
.end method

.method public setPlayProgress(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->playProgress:J

    return-void
.end method

.method public setPlayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isPlayed:Z

    return-void
.end method

.method public setPlaylistId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->playlist_id:Ljava/lang/String;

    return-void
.end method

.method public setRec_channel_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->rec_channel_id:Ljava/lang/String;

    return-void
.end method

.method public setRedPoint(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->redPoint:I

    return-void
.end method

.method public setRoleType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->roleType:I

    return-void
.end method

.method public setSave_time(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->save_time:J

    return-void
.end method

.method public setSelected(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->selected:I

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->startTime:J

    return-void
.end method

.method public setSubChannel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subChannel:I

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setSubscribeCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subscribeCount:J

    return-void
.end method

.method public setSubscribeCountText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subscribeCountText:Ljava/lang/String;

    return-void
.end method

.method public setSubscribe_status(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subscribe_status:I

    return-void
.end method

.method public setSubscribed(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->subscribed:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopLeftLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->topLeftLogo:Ljava/lang/String;

    return-void
.end method

.method public setTopRightLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->topRightLogo:Ljava/lang/String;

    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->topic:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->type:Ljava/lang/String;

    return-void
.end method

.method public setVideoCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->videoCount:I

    return-void
.end method

.method public setVideoCountText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->videoCountText:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setViewCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->viewCount:J

    return-void
.end method

.method public setViewCountText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->viewCountText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

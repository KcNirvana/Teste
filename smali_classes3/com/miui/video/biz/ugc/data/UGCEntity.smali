.class public Lcom/miui/video/biz/ugc/data/UGCEntity;
.super Lcom/miui/video/common/feed/entity/CoreEntity;
.source "UGCEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/ugc/data/UGCEntity$Feedback;,
        Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;,
        Lcom/miui/video/biz/ugc/data/UGCEntity$PostBody;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UGCEntity"


# instance fields
.field public appIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_icon"
    .end annotation
.end field

.field public duration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field public feedback:Lcom/miui/video/biz/ugc/data/UGCEntity$Feedback;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feedback"
    .end annotation
.end field

.field public feedback_list:Lorg/json/JSONObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feedback_list"
    .end annotation
.end field

.field public hot:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "like_num"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public isLike:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_like"
    .end annotation
.end field

.field public length:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field public media_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field public play_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_id"
    .end annotation
.end field

.field public poster:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster"
    .end annotation
.end field

.field public poster_height:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster_height"
    .end annotation
.end field

.field public poster_width:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster_width"
    .end annotation
.end field

.field public reco_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reco_id"
    .end annotation
.end field

.field public share_h5_addr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "share_h5_addr"
    .end annotation
.end field

.field public share_msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "share_msg"
    .end annotation
.end field

.field public share_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "share_url"
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public topRightLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_right_logo"
    .end annotation
.end field

.field public uploader_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uploader_name"
    .end annotation
.end field

.field public uploader_poster:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uploader_poster"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;-><init>()V

    return-void
.end method

.class public Lcom/miui/video/base/common/data/QueryFavorBody;
.super Ljava/lang/Object;
.source "QueryFavorBody.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LONG_VIDEO:Ljava/lang/String; = "longvideo"

.field public static final PLAY_LIST:Ljava/lang/String; = "playlist"

.field public static final SHORT_VIDEO:Ljava/lang/String; = "shortvideo"


# instance fields
.field public feed_type:Ljava/lang/String;

.field public playlist_id:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "v1"

    iput-object v0, p0, Lcom/miui/video/base/common/data/QueryFavorBody;->version:Ljava/lang/String;

    return-void
.end method

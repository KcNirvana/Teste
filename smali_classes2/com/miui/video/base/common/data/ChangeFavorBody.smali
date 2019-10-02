.class public Lcom/miui/video/base/common/data/ChangeFavorBody;
.super Ljava/lang/Object;
.source "ChangeFavorBody.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public eid:Ljava/lang/String;

.field public is_heart:I

.field public item_type:Ljava/lang/String;

.field public playlist_id:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "v1"

    iput-object v0, p0, Lcom/miui/video/base/common/data/ChangeFavorBody;->version:Ljava/lang/String;

    return-void
.end method

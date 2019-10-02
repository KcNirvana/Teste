.class public Lcom/miui/video/service/share/data/ShareInfo;
.super Ljava/lang/Object;
.source "ShareInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/share/data/ShareInfo$Builder;
    }
.end annotation


# static fields
.field public static final PREFIX_DETAIL:Ljava/lang/String; = "/blank_transition?target="

.field private static final PREFIX_UGC:Ljava/lang/String; = "/share?"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text/plain"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private channel:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private playlistId:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->channel:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->from:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->link:Ljava/lang/String;

    return-void
.end method

.method public setPlaylistId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->playlistId:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->target:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo;->type:Ljava/lang/String;

    return-void
.end method

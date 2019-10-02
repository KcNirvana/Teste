.class public Lcom/miui/video/service/share/data/ShareInfo$Builder;
.super Ljava/lang/Object;
.source "ShareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/share/data/ShareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field channel:Ljava/lang/String;

.field from:Ljava/lang/String;

.field id:Ljava/lang/String;

.field imageUrl:Ljava/lang/String;

.field link:Ljava/lang/String;

.field private playlistId:Ljava/lang/String;

.field subTitle:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPrefixByFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4a2ada04

    if-eq v0, v1, :cond_1

    const v1, -0xdc6157a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "from_detail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "from_ugc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_2

    :pswitch_0
    const-string p1, "/share?"

    goto :goto_2

    :pswitch_1
    const-string p1, "/blank_transition?target="

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bitmap(Landroid/graphics/Bitmap;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public build()Lcom/miui/video/service/share/data/ShareInfo;
    .locals 3

    new-instance v0, Lcom/miui/video/service/share/data/ShareInfo;

    invoke-direct {v0}, Lcom/miui/video/service/share/data/ShareInfo;-><init>()V

    iget-object v1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setImageUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setSubTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setFrom(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setChannel(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setType(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->from:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->getPrefixByFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setLink(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->playlistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setPlaylistId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setTarget(Ljava/lang/String;)V

    return-object v0
.end method

.method public channel(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public from(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->from:Ljava/lang/String;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public imageUrl(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public link(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method public playlistId(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->playlistId:Ljava/lang/String;

    return-object p0
.end method

.method public subTitle(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public target(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->target:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareInfo$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

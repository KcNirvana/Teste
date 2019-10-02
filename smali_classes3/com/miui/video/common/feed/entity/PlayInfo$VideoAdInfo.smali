.class Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;
.super Ljava/lang/Object;
.source "PlayInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/entity/PlayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoAdInfo"
.end annotation


# instance fields
.field public prerollTagIds:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preroll_tag_ids"
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/video/common/feed/entity/PlayInfo;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/entity/PlayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;->this$0:Lcom/miui/video/common/feed/entity/PlayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstTagId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;->prerollTagIds:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;->prerollTagIds:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;->prerollTagIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/common/feed/entity/PlayInfo$VideoAdInfo;->prerollTagIds:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const-string v0, ""

    return-object v0
.end method

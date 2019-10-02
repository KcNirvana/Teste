.class public Lcom/miui/video/biz/videoplus/player/entities/LineEntity;
.super Lcom/miui/video/base/common/entity/BaseEntity;
.source "LineEntity.java"


# instance fields
.field private detail:Ljava/lang/String;

.field private extras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private icon:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/common/entity/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->extras:Ljava/util/List;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->icon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->detail:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->extras:Ljava/util/List;

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->icon:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->title:Ljava/lang/String;

    return-void
.end method

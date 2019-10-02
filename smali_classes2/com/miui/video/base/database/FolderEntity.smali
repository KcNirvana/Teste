.class public Lcom/miui/video/base/database/FolderEntity;
.super Lcom/miui/video/framework/base/entity/PageEntity;
.source "FolderEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/framework/base/entity/PageEntity<",
        "Lcom/miui/video/base/database/LocalVideoEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final SHOW_0:I = 0x0

.field public static final SHOW_1:I = 0x1


# instance fields
.field private childAdCount:I

.field private datetime:J

.field private isChecked:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/base/entity/PageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAdCount()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/database/FolderEntity;->childAdCount:I

    return v0
.end method

.method public getChildVideoCount()I
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/database/FolderEntity;->list:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/base/database/FolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/miui/video/base/database/FolderEntity;->childAdCount:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDatetime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/database/FolderEntity;->datetime:J

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/database/FolderEntity;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/FolderEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/FolderEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPathList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/database/FolderEntity;->list:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/base/database/FolderEntity;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/base/database/FolderEntity;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/LocalVideoEntity;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/database/FolderEntity;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/database/FolderEntity;->isChecked:Z

    return-void
.end method

.method public setChildAdCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/database/FolderEntity;->childAdCount:I

    return-void
.end method

.method public setDatetime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/database/FolderEntity;->datetime:J

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/database/FolderEntity;->list:Ljava/util/List;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/FolderEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/FolderEntity;->title:Ljava/lang/String;

    return-void
.end method

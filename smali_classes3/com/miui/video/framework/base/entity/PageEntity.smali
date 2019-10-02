.class public abstract Lcom/miui/video/framework/base/entity/PageEntity;
.super Lcom/miui/video/framework/base/ui/BaseUIEntity;
.source "PageEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/framework/base/entity/PageEntity$DataState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private dataState:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

.field private index:I

.field private isDataReady:Z

.field private msg:Ljava/lang/String;

.field private next:Ljava/lang/String;

.field private page:I

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/framework/base/entity/PageEntity;->isDataReady:Z

    return-void
.end method


# virtual methods
.method public getDataState()Lcom/miui/video/framework/base/entity/PageEntity$DataState;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/base/entity/PageEntity;->dataState:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/video/framework/base/entity/PageEntity;->index:I

    return v0
.end method

.method public abstract getList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/base/entity/PageEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/base/entity/PageEntity;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/miui/video/framework/base/entity/PageEntity;->page:I

    return v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/miui/video/framework/base/entity/PageEntity;->result:I

    return v0
.end method

.method public isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/framework/base/entity/PageEntity;->isDataReady:Z

    return v0
.end method

.method public setDataReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/framework/base/entity/PageEntity;->isDataReady:Z

    return-void
.end method

.method public setDataState(Lcom/miui/video/framework/base/entity/PageEntity$DataState;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/base/entity/PageEntity;->dataState:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/framework/base/entity/PageEntity;->index:I

    return-void
.end method

.method public abstract setList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/base/entity/PageEntity;->msg:Ljava/lang/String;

    return-void
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/base/entity/PageEntity;->next:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/framework/base/entity/PageEntity;->page:I

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/framework/base/entity/PageEntity;->result:I

    return-void
.end method

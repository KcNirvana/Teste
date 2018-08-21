.class public Lcom/miui/home/launcher/assistant/module/CardSource;
.super Ljava/lang/Object;
.source "CardSource.java"


# instance fields
.field id:I

.field isReLoad:Z

.field prefKey:Ljava/lang/String;

.field rankid:I

.field resId:I

.field viewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/Class;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->id:I

    iput p2, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->resId:I

    iput-object p4, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->prefKey:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->isReLoad:Z

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->viewClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/assistant/module/CardSource;)V
    .locals 6

    iget v1, p1, Lcom/miui/home/launcher/assistant/module/CardSource;->id:I

    iget v2, p1, Lcom/miui/home/launcher/assistant/module/CardSource;->resId:I

    iget-object v3, p1, Lcom/miui/home/launcher/assistant/module/CardSource;->viewClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/miui/home/launcher/assistant/module/CardSource;->prefKey:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/miui/home/launcher/assistant/module/CardSource;->isReLoad:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/CardSource;-><init>(IILjava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/assistant/module/CardSource;Z)V
    .locals 6

    iget v1, p1, Lcom/miui/home/launcher/assistant/module/CardSource;->id:I

    iget v2, p1, Lcom/miui/home/launcher/assistant/module/CardSource;->resId:I

    iget-object v3, p1, Lcom/miui/home/launcher/assistant/module/CardSource;->viewClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/miui/home/launcher/assistant/module/CardSource;->prefKey:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/miui/home/launcher/assistant/module/CardSource;->isReLoad:Z

    or-int v5, v0, p2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/CardSource;-><init>(IILjava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCardId()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->id:I

    return v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->prefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getReLoad()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->isReLoad:Z

    return v0
.end method

.method public getResId()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->resId:I

    return v0
.end method

.method public getViewClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->viewClass:Ljava/lang/Class;

    return-object v0
.end method

.method public setCardId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->id:I

    return-void
.end method

.method public setPrefKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->prefKey:Ljava/lang/String;

    return-void
.end method

.method public setReLoad(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->isReLoad:Z

    return-void
.end method

.method public setResId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->resId:I

    return-void
.end method

.method public setViewClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->viewClass:Ljava/lang/Class;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/CardSource;->prefKey:Ljava/lang/String;

    return-object v0
.end method

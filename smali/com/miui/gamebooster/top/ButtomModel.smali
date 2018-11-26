.class public Lcom/miui/gamebooster/top/ButtomModel;
.super Lcom/miui/gamebooster/top/BaseModel;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/top/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0300bf

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "tab2_gameranking"

    const-string/jumbo v1, "more_game"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gG(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/ButtomModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eW(Landroid/content/Context;)V

    return-void
.end method

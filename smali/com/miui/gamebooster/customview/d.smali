.class public Lcom/miui/gamebooster/customview/d;
.super Landroid/app/Dialog;
.source ""


# instance fields
.field private hp:Lcom/miui/gamebooster/customview/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/customview/c;I)V
    .locals 0

    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/miui/gamebooster/customview/d;->hp:Lcom/miui/gamebooster/customview/c;

    return-void
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/d;->hp:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/d;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/d;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/d;->init()V

    return-void
.end method

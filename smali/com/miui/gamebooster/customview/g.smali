.class final Lcom/miui/gamebooster/customview/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic hU:Lcom/miui/gamebooster/customview/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/g;->hU:Lcom/miui/gamebooster/customview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-static {p2}, Lcom/miui/gamebooster/c/b;->tC(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->hU:Lcom/miui/gamebooster/customview/c;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/c;->jU(Lcom/miui/gamebooster/customview/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/I;->setAlarm(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/g;->hU:Lcom/miui/gamebooster/customview/c;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/c;->jU(Lcom/miui/gamebooster/customview/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/I;->iu(Landroid/content/Context;)V

    goto :goto_0
.end method

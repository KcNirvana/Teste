.class final Lcom/miui/powercenter/quickoptimize/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic aEI:Lcom/miui/powercenter/quickoptimize/e;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/x;->aEI:Lcom/miui/powercenter/quickoptimize/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    check-cast p1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/x;->aEI:Lcom/miui/powercenter/quickoptimize/e;

    invoke-static {v0, p1}, Lcom/miui/powercenter/quickoptimize/e;->aOD(Lcom/miui/powercenter/quickoptimize/e;Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/x;->aEI:Lcom/miui/powercenter/quickoptimize/e;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/e;->aOB(Lcom/miui/powercenter/quickoptimize/e;)Lcom/miui/common/d/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    return-void
.end method

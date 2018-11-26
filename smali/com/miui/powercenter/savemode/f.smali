.class final Lcom/miui/powercenter/savemode/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic aOy:Lcom/miui/powercenter/savemode/b;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/savemode/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/savemode/f;->aOy:Lcom/miui/powercenter/savemode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiui/widget/TimePicker;II)V
    .locals 2

    mul-int/lit8 v0, p2, 0x3c

    add-int/2addr v0, p3

    invoke-static {}, Lcom/miui/powercenter/a;->bfk()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/savemode/f;->aOy:Lcom/miui/powercenter/savemode/b;

    invoke-virtual {v0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07047d

    invoke-static {v0, v1}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/savemode/f;->aOy:Lcom/miui/powercenter/savemode/b;

    invoke-static {v1, v0}, Lcom/miui/powercenter/savemode/b;->bej(Lcom/miui/powercenter/savemode/b;I)V

    invoke-static {v0}, Lcom/miui/powercenter/a;->bfu(I)V

    iget-object v0, p0, Lcom/miui/powercenter/savemode/f;->aOy:Lcom/miui/powercenter/savemode/b;

    invoke-virtual {v0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/savemode/a;->setAlarm(Landroid/content/Context;)V

    return-void
.end method

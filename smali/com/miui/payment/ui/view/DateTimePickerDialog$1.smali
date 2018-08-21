.class Lcom/miui/payment/ui/view/DateTimePickerDialog$1;
.super Ljava/lang/Object;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/view/DateTimePickerDialog;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/view/DateTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/view/DateTimePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog$1;->this$0:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog$1;->this$0:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    invoke-static {v0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->access$000(Lcom/miui/payment/ui/view/DateTimePickerDialog;)Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog$1;->this$0:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    invoke-static {v0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->access$000(Lcom/miui/payment/ui/view/DateTimePickerDialog;)Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog$1;->this$0:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    iget-object v2, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog$1;->this$0:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    invoke-static {v2}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->access$100(Lcom/miui/payment/ui/view/DateTimePickerDialog;)Lmiui/widget/DateTimePicker;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/miui/payment/ui/view/DateTimePickerDialog;J)V

    :cond_0
    return-void
.end method

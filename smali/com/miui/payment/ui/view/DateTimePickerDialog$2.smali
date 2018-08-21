.class Lcom/miui/payment/ui/view/DateTimePickerDialog$2;
.super Ljava/lang/Object;
.source "DateTimePickerDialog.java"

# interfaces
.implements Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;


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

    iput-object p1, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog$2;->this$0:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateTimeChanged(Lmiui/widget/DateTimePicker;J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog$2;->this$0:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    invoke-static {v0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->access$200(Lcom/miui/payment/ui/view/DateTimePickerDialog;)Lmiui/date/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lcom/miui/payment/ui/view/DateTimePickerDialog$2;->this$0:Lcom/miui/payment/ui/view/DateTimePickerDialog;

    invoke-static {v0}, Lcom/miui/payment/ui/view/DateTimePickerDialog;->access$300(Lcom/miui/payment/ui/view/DateTimePickerDialog;)V

    return-void
.end method

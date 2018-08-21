.class Lcom/miui/payment/ui/edit/EditLayoutContainer$3;
.super Ljava/lang/Object;
.source "EditLayoutContainer.java"

# interfaces
.implements Lcom/miui/payment/ui/view/DateTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/edit/EditLayoutContainer;->changeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/edit/EditLayoutContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$3;->this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/miui/payment/ui/view/DateTimePickerDialog;J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditLayoutContainer$3;->this$0:Lcom/miui/payment/ui/edit/EditLayoutContainer;

    invoke-static {v0}, Lcom/miui/payment/ui/edit/EditLayoutContainer;->access$300(Lcom/miui/payment/ui/edit/EditLayoutContainer;)Lcom/miui/payment/ui/view/TimeTextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/miui/payment/ui/view/TimeTextView;->setText(J)V

    return-void
.end method

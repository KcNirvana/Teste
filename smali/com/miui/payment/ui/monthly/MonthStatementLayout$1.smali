.class Lcom/miui/payment/ui/monthly/MonthStatementLayout$1;
.super Ljava/lang/Object;
.source "MonthStatementLayout.java"

# interfaces
.implements Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/monthly/MonthStatementLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/monthly/MonthStatementLayout;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/monthly/MonthStatementLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout$1;->this$0:Lcom/miui/payment/ui/monthly/MonthStatementLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthFocusChanged(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout$1;->this$0:Lcom/miui/payment/ui/monthly/MonthStatementLayout;

    invoke-static {v0, p1, p2}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->access$000(Lcom/miui/payment/ui/monthly/MonthStatementLayout;J)V

    return-void
.end method

.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$2;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNoPwdMainPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenUrl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->setParams([Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->processEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    return-void
.end method

.class Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$5;
.super Ljava/lang/Object;
.source "FlybirdLocalViewActivityAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

.field final synthetic val$action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$5;->val$action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$5;->val$action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$5;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$5;->val$action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    :cond_0
    return-void
.end method

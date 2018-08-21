.class Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$3;
.super Ljava/lang/Object;
.source "FlyBirdWindowActivityAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

.field final synthetic val$action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$3;->val$action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$3;->val$action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$3;->val$action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$200(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    :cond_0
    return-void
.end method

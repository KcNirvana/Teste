.class Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$3;
.super Ljava/lang/Object;
.source "FunctionLaunchCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->bindMoreOrEmptyBtnEntry(ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$3;->val$position:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;I)V

    return-void
.end method

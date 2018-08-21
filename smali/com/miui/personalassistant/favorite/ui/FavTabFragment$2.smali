.class Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;
.super Ljava/lang/Object;
.source "FavTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->checkClipboardMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

.field final synthetic val$urlParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;->val$urlParam:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$200(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$200(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$202(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;->val$urlParam:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$300(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;->val$urlParam:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$400(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/lang/String;)V

    return-void
.end method

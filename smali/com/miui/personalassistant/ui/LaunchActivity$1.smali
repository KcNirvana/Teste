.class Lcom/miui/personalassistant/ui/LaunchActivity$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/LaunchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/LaunchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/LaunchActivity$1;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity$1;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    const-string/jumbo v1, "\u70b9\u51fb\u8fd4\u56de"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity$1;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/LaunchActivity;->finish()V

    return-void
.end method

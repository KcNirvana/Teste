.class Lcom/miui/personalassistant/ui/WebActivity$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/WebActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/WebActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/WebActivity$1;->this$0:Lcom/miui/personalassistant/ui/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/WebActivity$1;->this$0:Lcom/miui/personalassistant/ui/WebActivity;

    const-string/jumbo v1, "com.tigerbrokers.stock"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity$2;
.super Ljava/lang/Object;
.source "FavDownloadDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity$2;->this$0:Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity$2;->this$0:Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity$2;->this$0:Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;->finish()V

    return-void
.end method

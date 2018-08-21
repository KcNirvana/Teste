.class Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;
.super Ljava/lang/Object;
.source "AlipayXspaceResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const v3, 0x10008000

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0x1b0903ce

    if-ne v0, v4, :cond_1

    const/4 v7, 0x1

    :goto_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v0, "android.intent.extra.auth_to_call_xspace"

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->access$000(Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->access$100(Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->access$100(Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    const/16 v9, 0x3e7

    invoke-direct {v5, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    :goto_1
    :try_start_0
    invoke-virtual {v8}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->finish()V

    return-void

    :cond_1
    move v7, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;->this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    goto :goto_1

    :catch_0
    move-exception v6

    const-string/jumbo v0, "XspaceResolverActivity"

    const-string/jumbo v1, "PendingIntent.CanceledException"

    invoke-static {v0, v1, v6}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

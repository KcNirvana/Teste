.class final Lcom/miui/share/chooser/ShareInfo$1;
.super Ljava/lang/Object;
.source "ShareInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/share/chooser/ShareInfo;->createShareInfoActionSend(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/miui/share/chooser/ShareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/chooser/ShareInfo$1;->val$shareIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/miui/share/chooser/ShareInfo$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/share/chooser/ShareInfo$1;->val$activityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/share/chooser/ShareInfo$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/share/chooser/ShareInfo$1;->val$shareIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/miui/share/ShareUtils;->newShareIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/share/chooser/ShareInfo$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/share/chooser/ShareInfo$1;->val$activityName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/share/chooser/ShareInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/share/ShareUtils;->shareIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

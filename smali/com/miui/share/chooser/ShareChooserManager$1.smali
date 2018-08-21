.class final Lcom/miui/share/chooser/ShareChooserManager$1;
.super Ljava/lang/Object;
.source "ShareChooserManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/share/chooser/ShareChooserManager;->addShareInfo(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/content/Intent;Lcom/miui/share/ShareDelegate;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$shareDelegate:Lcom/miui/share/ShareDelegate;

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/share/ShareDelegate;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/chooser/ShareChooserManager$1;->val$shareDelegate:Lcom/miui/share/ShareDelegate;

    iput-object p2, p0, Lcom/miui/share/chooser/ShareChooserManager$1;->val$shareIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/share/chooser/ShareChooserManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserManager$1;->val$shareDelegate:Lcom/miui/share/ShareDelegate;

    iget-object v1, p0, Lcom/miui/share/chooser/ShareChooserManager$1;->val$shareIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/share/ShareDelegate;->share(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/share/chooser/ShareChooserManager;->finishShareChooserActivity(Landroid/app/Activity;)V

    return-void
.end method

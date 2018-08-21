.class final Lcom/miui/personalassistant/express/util/CainiaoUtil$1;
.super Ljava/lang/Object;
.source "CainiaoUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/util/CainiaoUtil;->showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/util/CainiaoUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CainiaoUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/express/util/CainiaoUtil;->access$000(Landroid/content/Context;)V

    return-void
.end method

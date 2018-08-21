.class Lcom/miui/share/chooser/ShareChooserDialog$1;
.super Lcom/miui/share/PackageMonitor;
.source "ShareChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/share/chooser/ShareChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/share/chooser/ShareChooserDialog;


# direct methods
.method constructor <init>(Lcom/miui/share/chooser/ShareChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/chooser/ShareChooserDialog$1;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-direct {p0}, Lcom/miui/share/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog$1;->this$0:Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-static {v0}, Lcom/miui/share/chooser/ShareChooserDialog;->access$100(Lcom/miui/share/chooser/ShareChooserDialog;)Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->handlePackagesChanged()V

    return-void
.end method

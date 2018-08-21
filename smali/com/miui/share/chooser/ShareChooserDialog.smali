.class public final Lcom/miui/share/chooser/ShareChooserDialog;
.super Landroid/app/DialogFragment;
.source "ShareChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;,
        Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiShareChooserDialog"


# instance fields
.field private mAdapter:Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

.field private mGrid:Landroid/widget/GridView;

.field private final mPackageMonitor:Lcom/miui/share/PackageMonitor;

.field private mRegistered:Z

.field private mShareInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/share/chooser/ShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareItemListener:Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;-><init>(Lcom/miui/share/chooser/ShareChooserDialog;Lcom/miui/share/chooser/ShareChooserDialog$1;)V

    iput-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mShareItemListener:Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mRegistered:Z

    new-instance v0, Lcom/miui/share/chooser/ShareChooserDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/share/chooser/ShareChooserDialog$1;-><init>(Lcom/miui/share/chooser/ShareChooserDialog;)V

    iput-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mPackageMonitor:Lcom/miui/share/PackageMonitor;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/share/chooser/ShareChooserDialog;)Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mAdapter:Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/share/chooser/ShareChooserDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mShareInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/share/chooser/ShareChooserDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/share/chooser/ShareChooserDialog;->rebuildList()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/share/chooser/ShareChooserDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/share/chooser/ShareChooserDialog;->resizeGrid()V

    return-void
.end method

.method private static getMaxColumns(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method private initialize(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/miui/share/R$id;->share_gird:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

    invoke-direct {v2, p0, v1}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;-><init>(Lcom/miui/share/chooser/ShareChooserDialog;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mAdapter:Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

    iget-object v2, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mAdapter:Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

    iget-object v3, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mShareInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->setShareList(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mAdapter:Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mShareItemListener:Lcom/miui/share/chooser/ShareChooserDialog$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v2, Lcom/miui/share/R$id;->button_cancel:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/miui/share/chooser/ShareChooserDialog$2;

    invoke-direct {v3, p0}, Lcom/miui/share/chooser/ShareChooserDialog$2;-><init>(Lcom/miui/share/chooser/ShareChooserDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/share/chooser/ShareChooserDialog;->resizeGrid()V

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mAdapter:Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->setIconSize(I)V

    iget-object v2, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mPackageMonitor:Lcom/miui/share/PackageMonitor;

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/share/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mRegistered:Z

    return-void
.end method

.method static newInstance()Lcom/miui/share/chooser/ShareChooserDialog;
    .locals 1

    new-instance v0, Lcom/miui/share/chooser/ShareChooserDialog;

    invoke-direct {v0}, Lcom/miui/share/chooser/ShareChooserDialog;-><init>()V

    return-object v0
.end method

.method private rebuildList()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/share/chooser/ShareChooserActivity;

    invoke-virtual {v0}, Lcom/miui/share/chooser/ShareChooserActivity;->prepareShareList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mShareInfos:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mAdapter:Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

    iget-object v1, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mShareInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->setShareList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private resizeGrid()V
    .locals 3

    iget-object v1, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mAdapter:Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

    invoke-virtual {v1}, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mGrid:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/share/chooser/ShareChooserDialog;->getMaxColumns(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/share/ShareResultManager;->notifyShareResult(II)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/miui/share/R$layout;->share_chooser:I

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/miui/share/chooser/ShareChooserDialog;->initialize(Landroid/view/View;)V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mPackageMonitor:Lcom/miui/share/PackageMonitor;

    invoke-virtual {v0}, Lcom/miui/share/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mRegistered:Z

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/miui/share/chooser/ShareChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/share/chooser/ShareChooserManager;->finishShareChooserActivity(Landroid/app/Activity;)V

    return-void
.end method

.method setShareInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/share/chooser/ShareInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mShareInfos:Ljava/util/ArrayList;

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/share/chooser/ShareChooserDialog;->mTitle:Ljava/lang/String;

    return-void
.end method

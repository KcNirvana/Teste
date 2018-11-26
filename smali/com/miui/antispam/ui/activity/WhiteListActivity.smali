.class public Lcom/miui/antispam/ui/activity/WhiteListActivity;
.super Lcom/miui/antispam/ui/activity/k;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/antispam/ui/activity/WhiteListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/ui/activity/WhiteListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/k;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/k;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v2, p0, Lcom/miui/antispam/ui/activity/WhiteListActivity;->SU:Z

    new-instance v0, Lcom/miui/antispam/ui/a/a;

    invoke-direct {v0, p0, v2}, Lcom/miui/antispam/ui/a/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/WhiteListActivity;->SV:Lcom/miui/antispam/ui/a/a;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/WhiteListActivity;->SW:Lmiui/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/WhiteListActivity;->SV:Lcom/miui/antispam/ui/a/a;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/WhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "type = ? AND sim_id = ? AND sync_dirty <> ? "

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "2"

    const/4 v6, 0x0

    aput-object v1, v5, v6

    iget v1, p0, Lcom/miui/antispam/ui/activity/WhiteListActivity;->SZ:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v5, v6

    move-object v1, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

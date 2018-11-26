.class public Lcom/miui/antispam/ui/activity/k;
.super Lcom/miui/antispam/ui/activity/b;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# static fields
.field private static final Ta:[Ljava/lang/String;


# instance fields
.field protected SU:Z

.field protected SV:Lcom/miui/antispam/ui/a/a;

.field protected SW:Lmiui/widget/EditableListView;

.field protected SX:Landroid/widget/CheckBox;

.field protected SY:Landroid/widget/CheckBox;

.field protected SZ:I

.field private Tb:Ljava/util/Comparator;

.field protected Tc:Landroid/app/AlertDialog;

.field protected Td:Landroid/app/Dialog;

.field protected Te:Lcom/miui/antispam/ui/activity/l;

.field protected Tf:Landroid/view/View;

.field protected Tg:Landroid/widget/ImageView;

.field protected Th:Landroid/widget/TextView;

.field protected Ti:Z

.field protected Tj:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/antispam/ui/activity/k;->Ta:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->Ti:Z

    new-instance v0, Lcom/miui/antispam/ui/activity/T;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/T;-><init>(Lcom/miui/antispam/ui/activity/k;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tb:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic UD(Lcom/miui/antispam/ui/activity/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/k;->Uv()V

    return-void
.end method

.method private Uv()V
    .locals 10

    const/4 v5, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lmiui/widget/EditableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const-string/jumbo v8, "number"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "***"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "notes"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "***"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v4, p0, Lcom/miui/antispam/ui/activity/k;->SZ:I

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/antispam/util/h;->XN(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Integer;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    iget v4, p0, Lcom/miui/antispam/ui/activity/k;->SZ:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/antispam/util/h;->XN(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    :cond_4
    return-void
.end method


# virtual methods
.method public UA(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tf:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SV:Lcom/miui/antispam/ui/a/a;

    new-instance v1, Lcom/miui/antispam/util/i;

    const-string/jumbo v2, "number"

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/k;->Tb:Ljava/util/Comparator;

    invoke-direct {v1, p2, v2, v3}, Lcom/miui/antispam/util/i;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Comparator;)V

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/a/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v2}, Lmiui/widget/EditableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tg:Landroid/widget/ImageView;

    const v1, 0x7f020290

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/k;->Th:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070032

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f070033

    goto :goto_1
.end method

.method protected UB()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.include_unknown_numbers"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.initial_picker_tab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.extra.MAX_COUNT"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x3ee

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/ui/activity/k;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected UC(Landroid/view/ActionMode;Z)V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f070069

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tc:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tc:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    const v0, 0x7f07006a

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p2, :cond_6

    :goto_2
    new-instance v2, Lcom/miui/antispam/ui/activity/X;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/antispam/ui/activity/X;-><init>(Lcom/miui/antispam/ui/activity/k;Landroid/view/ActionMode;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f070051

    goto :goto_0

    :cond_3
    const v0, 0x7f070050

    goto :goto_0

    :cond_4
    const v0, 0x7f07004f

    goto :goto_1

    :cond_5
    const v0, 0x7f070052

    goto :goto_1

    :cond_6
    const v1, 0x7f070055

    goto :goto_2
.end method

.method protected Uu()V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d001b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700aa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/antispam/ui/activity/W;

    invoke-direct {v2, p0}, Lcom/miui/antispam/ui/activity/W;-><init>(Lcom/miui/antispam/ui/activity/k;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v0, 0x7f0d001d

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0d001c

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v0, 0x7f0d001e

    goto :goto_2
.end method

.method protected Uw()V
    .locals 5

    new-instance v1, Lcom/miui/antispam/ui/activity/Y;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/Y;-><init>(Lcom/miui/antispam/ui/activity/k;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/antispam/ui/activity/Y;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected Ux(IJLjava/lang/String;)V
    .locals 6

    new-instance v1, Lcom/miui/antispam/ui/activity/V;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/antispam/ui/activity/V;-><init>(Lcom/miui/antispam/ui/activity/k;IJ)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/antispam/ui/activity/V;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected Uy(JLjava/lang/String;IILjava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "is_black"

    iget-boolean v2, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "id_edit_blacklist"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "number_edit_blacklist"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "state_edit_blacklist"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "sync_edit_blacklist"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "note_edit_blacklist"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SIM_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/k;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected Uz(Ljava/util/List;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Td:Landroid/app/Dialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antispam/ui/activity/l;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/l;-><init>(Lcom/miui/antispam/ui/activity/k;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Te:Lcom/miui/antispam/ui/activity/l;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_1

    const v0, 0x7f070044

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_2

    const v0, 0x7f07003f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/k;->Tj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/k;->Te:Lcom/miui/antispam/ui/activity/l;

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Td:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Te:Lcom/miui/antispam/ui/activity/l;

    invoke-virtual {v0, p1}, Lcom/miui/antispam/ui/activity/l;->UE(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Td:Landroid/app/Dialog;

    return-object v0

    :cond_1
    const v0, 0x7f070043

    goto :goto_0

    :cond_2
    const v0, 0x7f070040

    goto :goto_1
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v3

    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/antispam/ui/activity/k;->UC(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1, v3}, Lcom/miui/antispam/ui/activity/k;->UC(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->Ti:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->Ti:Z

    check-cast p1, Lmiui/view/EditActionMode;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->Ti:Z

    if-eqz v0, :cond_0

    sget v0, Lmiui/R$drawable;->action_mode_title_button_select_all_light:I

    :goto_1
    const v1, 0x102001a

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    :cond_0
    sget v0, Lmiui/R$drawable;->action_mode_title_button_deselect_all_light:I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102001a -> :sswitch_2
        0x7f0a0425 -> :sswitch_1
        0x7f0a0426 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/16 v1, 0x3ee

    if-eq p1, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v1, v2

    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v2

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_7

    aget-object v0, v2, v1

    check-cast v0, Landroid/net/Uri;

    const-string/jumbo v7, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string/jumbo v7, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/antispam/ui/activity/k;->Ta:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_8
    if-nez v4, :cond_9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz v4, :cond_b

    :goto_2
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SX:Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SY:Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0, v6}, Lcom/miui/antispam/ui/activity/k;->Uz(Ljava/util/List;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_c
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14

    const/4 v1, 0x0

    const/4 v13, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/k;->SV:Lcom/miui/antispam/ui/a/a;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Lcom/miui/antispam/ui/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const-string/jumbo v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "number"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "notes"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v5, "state"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v6, "sync_dirty"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v8, "sim_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v0, "***"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v13

    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    return v13

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/miui/antispam/ui/activity/k;->SZ:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v4, v0}, Lcom/miui/antispam/util/h;->XY(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_2
    invoke-static {p0, v4}, Lcom/miui/antispam/util/h;->XZ(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p0, v4}, Lcom/miui/antispam/util/h;->Yk(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/miui/antispam/ui/activity/k;->Uy(JLjava/lang/String;IILjava/lang/String;I)V

    goto :goto_1

    :pswitch_5
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_1

    const v0, 0x7f070053

    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v1, :cond_4

    const v1, 0x7f070051

    :goto_3
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v7, Lcom/miui/antispam/ui/activity/U;

    move-object v8, p0

    move v9, v6

    move-wide v10, v2

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Lcom/miui/antispam/ui/activity/U;-><init>(Lcom/miui/antispam/ui/activity/k;IJLjava/lang/String;)V

    const v1, 0x7f070055

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_1
    const v0, 0x7f070054

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_3

    const v0, 0x7f07004f

    goto :goto_2

    :cond_3
    const v0, 0x7f070052

    goto :goto_2

    :cond_4
    const v1, 0x7f070050

    goto :goto_3

    :pswitch_6
    invoke-static {p0, v4, v13}, Lcom/miui/antispam/util/h;->XP(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_7
    invoke-static {p0, v4}, Lcom/miui/antispam/util/h;->XS(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030098

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/k;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/k;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_sim_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/k;->SZ:I

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tf:Landroid/view/View;

    const v0, 0x7f0a01e7

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tg:Landroid/widget/ImageView;

    const v0, 0x7f0a01e8

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Th:Landroid/widget/TextView;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/EditableListView;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, p0}, Lmiui/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, p0}, Lmiui/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tj:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tj:Landroid/view/View;

    const v1, 0x7f0a0387

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SX:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->Tj:Landroid/view/View;

    const v1, 0x7f0a0388

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SY:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/k;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SV:Lcom/miui/antispam/ui/a/a;

    invoke-virtual {v0, v2}, Lcom/miui/antispam/ui/a/a;->Vh(Z)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/k;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-nez v0, :cond_0

    const v0, 0x7f0a0425

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    move-object v0, p1

    check-cast v0, Lmiui/view/EditActionMode;

    sget v1, Lmiui/R$drawable;->action_mode_title_button_cancel_light:I

    const v2, 0x1020019

    invoke-interface {v0, v2, v3, v1}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    check-cast p1, Lmiui/view/EditActionMode;

    sget v0, Lmiui/R$drawable;->action_mode_title_button_select_all_light:I

    const v1, 0x102001a

    invoke-interface {p1, v1, v3, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v4, 0x0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SV:Lcom/miui/antispam/ui/a/a;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const-string/jumbo v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "***"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "notes"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :goto_0
    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_1

    invoke-static {p0, v1}, Lcom/miui/antispam/util/h;->Yd(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v1}, Lcom/miui/antispam/util/h;->Yf(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v0, :cond_0

    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/k;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {p1, v4, v3, v4, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    if-lez v2, :cond_1

    const/4 v0, 0x4

    const v2, 0x7f07007a

    invoke-interface {p1, v4, v0, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    const-string/jumbo v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/k;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x6

    const v1, 0x7f070078

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    const/16 v0, 0xa

    const v1, 0x7f07007e

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/k;->SU:Z

    if-eqz v0, :cond_4

    const v0, 0x7f07007b

    :goto_1
    const/16 v1, 0x8

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void

    :cond_3
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    :cond_4
    const v0, 0x7f07007c

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/16 v0, 0x65

    const v1, 0x7f07007e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_edit_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v0, 0x64

    const v1, 0x7f07007d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SV:Lcom/miui/antispam/ui/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/a/a;->Vh(Z)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x102001a

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v1}, Lmiui/widget/EditableListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lmiui/view/EditActionMode;

    sget v0, Lmiui/R$drawable;->action_mode_title_button_deselect_all_light:I

    invoke-interface {p1, v2, v3, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lmiui/view/EditActionMode;

    sget v0, Lmiui/R$drawable;->action_mode_title_button_select_all_light:I

    invoke-interface {p1, v2, v3, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->showContextMenu()Z

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/activity/k;->UA(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SV:Lcom/miui/antispam/ui/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/a/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/k;->Uu()V

    return v2

    :pswitch_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v2}, Lmiui/widget/EditableListView;->setAllItemsChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/k;->SW:Lmiui/widget/EditableListView;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListView;->setAllItemsChecked(Z)V

    :goto_0
    return v2

    :cond_0
    const v0, 0x7f07010e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

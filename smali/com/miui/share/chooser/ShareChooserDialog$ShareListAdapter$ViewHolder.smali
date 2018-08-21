.class Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ShareChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;->this$1:Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/share/chooser/ShareChooserDialog$ShareListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method

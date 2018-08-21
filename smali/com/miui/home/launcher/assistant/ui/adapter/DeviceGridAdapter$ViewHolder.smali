.class Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DeviceGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field deviceDescription:Landroid/widget/TextView;

.field deviceName:Landroid/widget/TextView;

.field imageIcon:Landroid/widget/ImageView;

.field mOpButton:Landroid/widget/ImageView;

.field mStatusContainer:Landroid/widget/LinearLayout;

.field rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b09019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    const v0, 0x1b0901a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    const v0, 0x1b09006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->imageIcon:Landroid/widget/ImageView;

    const v0, 0x1b0901a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceDescription:Landroid/widget/TextView;

    const v0, 0x1b0901a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mStatusContainer:Landroid/widget/LinearLayout;

    const v0, 0x1b0901aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    return-void
.end method

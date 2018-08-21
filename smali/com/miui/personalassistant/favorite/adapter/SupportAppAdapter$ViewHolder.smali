.class public Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SupportAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mIcon:Landroid/widget/ImageView;

.field public mIvRemove:Landroid/widget/ImageView;

.field public mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->this$0:Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b0900cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x1b0900ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x1b090235

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    return-void
.end method

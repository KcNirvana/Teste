.class public Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SupportAllAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter$ViewHolder;->this$0:Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b09006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/adapter/SupportAllAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

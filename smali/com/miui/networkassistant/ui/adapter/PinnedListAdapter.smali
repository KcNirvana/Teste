.class public abstract Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
.super Lcom/miui/common/expandableview/d;
.source ""


# static fields
.field public static final SORTED_BY_NAME:I = 0x0

.field public static final SORTED_BY_STATE:I = 0x1


# instance fields
.field public mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

.field public mInflater:Landroid/view/LayoutInflater;

.field protected mSearchInputStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/expandableview/d;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public abstract setHeaderTitle(Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;Ljava/lang/String;)V
.end method

.method public setOnSelectionListener(Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->mAdapterListener:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter$AppSelectionAdapterListener;

    return-void
.end method

.method public setSearchInput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->mSearchInputStr:Ljava/lang/String;

    return-void
.end method

.method public abstract updateData(Ljava/util/Map;I)V
.end method

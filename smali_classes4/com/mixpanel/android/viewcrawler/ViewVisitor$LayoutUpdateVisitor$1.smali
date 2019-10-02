.class Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor$1;
.super Ljava/lang/Object;
.source "ViewVisitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;->verifyLayout(Ljava/util/Set;Landroid/util/SparseArray;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;)V
    .locals 0

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor$1;->this$0:Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method

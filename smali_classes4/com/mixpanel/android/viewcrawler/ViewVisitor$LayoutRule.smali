.class public Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;
.super Ljava/lang/Object;
.source "ViewVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/ViewVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutRule"
.end annotation


# instance fields
.field public final anchor:I

.field public final verb:I

.field public final viewId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;->viewId:I

    iput p2, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;->verb:I

    iput p3, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule;->anchor:I

    return-void
.end method

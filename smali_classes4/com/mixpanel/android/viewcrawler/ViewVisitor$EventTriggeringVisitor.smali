.class abstract Lcom/mixpanel/android/viewcrawler/ViewVisitor$EventTriggeringVisitor;
.super Lcom/mixpanel/android/viewcrawler/ViewVisitor;
.source "ViewVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/ViewVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "EventTriggeringVisitor"
.end annotation


# instance fields
.field private final mDebounce:Z

.field private final mEventName:Ljava/lang/String;

.field private final mListener:Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnEventListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnEventListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/viewcrawler/Pathfinder$PathElement;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnEventListener;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/mixpanel/android/viewcrawler/ViewVisitor;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$EventTriggeringVisitor;->mListener:Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnEventListener;

    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$EventTriggeringVisitor;->mEventName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$EventTriggeringVisitor;->mDebounce:Z

    return-void
.end method


# virtual methods
.method protected fireEvent(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$EventTriggeringVisitor;->mListener:Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnEventListener;

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$EventTriggeringVisitor;->mEventName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$EventTriggeringVisitor;->mDebounce:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/mixpanel/android/viewcrawler/ViewVisitor$OnEventListener;->OnEvent(Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method protected getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$EventTriggeringVisitor;->mEventName:Ljava/lang/String;

    return-object v0
.end method

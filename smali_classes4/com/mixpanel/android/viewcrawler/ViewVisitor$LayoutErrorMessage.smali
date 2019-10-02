.class public Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutErrorMessage;
.super Ljava/lang/Object;
.source "ViewVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/ViewVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutErrorMessage"
.end annotation


# instance fields
.field private final mErrorType:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutErrorMessage;->mErrorType:Ljava/lang/String;

    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutErrorMessage;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutErrorMessage;->mErrorType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/ViewVisitor$LayoutErrorMessage;->mName:Ljava/lang/String;

    return-object v0
.end method

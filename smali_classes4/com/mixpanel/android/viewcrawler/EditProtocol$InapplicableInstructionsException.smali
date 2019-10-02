.class public Lcom/mixpanel/android/viewcrawler/EditProtocol$InapplicableInstructionsException;
.super Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;
.source "EditProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/EditProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InapplicableInstructionsException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37315801d3e28970L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mixpanel/android/viewcrawler/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;)V

    return-void
.end method

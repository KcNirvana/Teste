.class public abstract Lorg/apache/xmlrpc/util/XmlRpcDateTimeDateFormat;
.super Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;


# static fields
.field private static final serialVersionUID:J = -0x46e115faa13f7480L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    :goto_0
    return-object p1
.end method

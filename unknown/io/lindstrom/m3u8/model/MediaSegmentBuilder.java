package io.lindstrom.m3u8.model;

import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import javax.annotation.Generated;

/**
 * Builds instances of type {@link MediaSegment MediaSegment}.
 * Initialize attributes and then invoke the {@link #build()} method to create an
 * immutable instance.
 * <p><em>{@code MediaSegmentBuilder} is not thread-safe and generally should not be stored in a field or collection,
 * but instead used immediately to create instances.</em>
 */
@SuppressWarnings({"all"})
@Generated({"Immutables.generator", "MediaSegment"})
class MediaSegmentBuilder {
  private static final long INIT_BIT_DURATION = 0x1L;
  private static final long INIT_BIT_URI = 0x2L;
  private static final long OPT_BIT_DISCONTINUITY = 0x1L;
  private long initBits = 0x3L;
  private long optBits;

  private double duration;
  private String title;
  private String uri;
  private ByteRange byteRange;
  private OffsetDateTime programDateTime;
  private SegmentMap segmentMap;
  private SegmentKey segmentKey;
  private boolean discontinuity;

  /**
   * Creates a builder for {@link MediaSegment MediaSegment} instances.
   */
  MediaSegmentBuilder() {
    if (!(this instanceof MediaSegment.Builder)) {
      throw new UnsupportedOperationException("Use: new MediaSegment.Builder()");
    }
  }

  /**
   * Fill a builder with attribute values from the provided {@code MediaSegment} instance.
   * Regular attribute values will be replaced with those from the given instance.
   * Absent optional values will not replace present values.
   * @param instance The instance from which to copy values
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaSegment.Builder from(MediaSegment instance) {
    Objects.requireNonNull(instance, "instance");
    duration(instance.duration());
    Optional<String> titleOptional = instance.title();
    if (titleOptional.isPresent()) {
      title(titleOptional);
    }
    uri(instance.uri());
    Optional<ByteRange> byteRangeOptional = instance.byteRange();
    if (byteRangeOptional.isPresent()) {
      byteRange(byteRangeOptional);
    }
    Optional<OffsetDateTime> programDateTimeOptional = instance.programDateTime();
    if (programDateTimeOptional.isPresent()) {
      programDateTime(programDateTimeOptional);
    }
    Optional<SegmentMap> segmentMapOptional = instance.segmentMap();
    if (segmentMapOptional.isPresent()) {
      segmentMap(segmentMapOptional);
    }
    Optional<SegmentKey> segmentKeyOptional = instance.segmentKey();
    if (segmentKeyOptional.isPresent()) {
      segmentKey(segmentKeyOptional);
    }
    discontinuity(instance.discontinuity());
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the value for the {@link MediaSegment#duration() duration} attribute.
   * @param duration The value for duration 
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaSegment.Builder duration(double duration) {
    this.duration = duration;
    initBits &= ~INIT_BIT_DURATION;
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaSegment#title() title} to title.
   * @param title The value for title
   * @return {@code this} builder for chained invocation
   */
  public final MediaSegment.Builder title(String title) {
    this.title = Objects.requireNonNull(title, "title");
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaSegment#title() title} to title.
   * @param title The value for title
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaSegment.Builder title(Optional<String> title) {
    this.title = title.orElse(null);
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the value for the {@link MediaSegment#uri() uri} attribute.
   * @param uri The value for uri 
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaSegment.Builder uri(String uri) {
    this.uri = Objects.requireNonNull(uri, "uri");
    initBits &= ~INIT_BIT_URI;
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaSegment#byteRange() byteRange} to byteRange.
   * @param byteRange The value for byteRange
   * @return {@code this} builder for chained invocation
   */
  public final MediaSegment.Builder byteRange(ByteRange byteRange) {
    this.byteRange = Objects.requireNonNull(byteRange, "byteRange");
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaSegment#byteRange() byteRange} to byteRange.
   * @param byteRange The value for byteRange
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaSegment.Builder byteRange(Optional<? extends ByteRange> byteRange) {
    this.byteRange = byteRange.orElse(null);
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaSegment#programDateTime() programDateTime} to programDateTime.
   * @param programDateTime The value for programDateTime
   * @return {@code this} builder for chained invocation
   */
  public final MediaSegment.Builder programDateTime(OffsetDateTime programDateTime) {
    this.programDateTime = Objects.requireNonNull(programDateTime, "programDateTime");
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaSegment#programDateTime() programDateTime} to programDateTime.
   * @param programDateTime The value for programDateTime
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaSegment.Builder programDateTime(Optional<? extends OffsetDateTime> programDateTime) {
    this.programDateTime = programDateTime.orElse(null);
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaSegment#segmentMap() segmentMap} to segmentMap.
   * @param segmentMap The value for segmentMap
   * @return {@code this} builder for chained invocation
   */
  public final MediaSegment.Builder segmentMap(SegmentMap segmentMap) {
    this.segmentMap = Objects.requireNonNull(segmentMap, "segmentMap");
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaSegment#segmentMap() segmentMap} to segmentMap.
   * @param segmentMap The value for segmentMap
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaSegment.Builder segmentMap(Optional<? extends SegmentMap> segmentMap) {
    this.segmentMap = segmentMap.orElse(null);
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaSegment#segmentKey() segmentKey} to segmentKey.
   * @param segmentKey The value for segmentKey
   * @return {@code this} builder for chained invocation
   */
  public final MediaSegment.Builder segmentKey(SegmentKey segmentKey) {
    this.segmentKey = Objects.requireNonNull(segmentKey, "segmentKey");
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaSegment#segmentKey() segmentKey} to segmentKey.
   * @param segmentKey The value for segmentKey
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaSegment.Builder segmentKey(Optional<? extends SegmentKey> segmentKey) {
    this.segmentKey = segmentKey.orElse(null);
    return (MediaSegment.Builder) this;
  }

  /**
   * Initializes the value for the {@link MediaSegment#discontinuity() discontinuity} attribute.
   * <p><em>If not set, this attribute will have a default value as returned by the initializer of {@link MediaSegment#discontinuity() discontinuity}.</em>
   * @param discontinuity The value for discontinuity 
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaSegment.Builder discontinuity(boolean discontinuity) {
    this.discontinuity = discontinuity;
    optBits |= OPT_BIT_DISCONTINUITY;
    return (MediaSegment.Builder) this;
  }

  /**
   * Builds a new {@link MediaSegment MediaSegment}.
   * @return An immutable instance of MediaSegment
   * @throws java.lang.IllegalStateException if any required attributes are missing
   */
  public MediaSegment build() {
    if (initBits != 0) {
      throw new IllegalStateException(formatRequiredAttributesMessage());
    }
    return new MediaSegmentBuilder.ImmutableMediaSegment(this);
  }

  private boolean discontinuityIsSet() {
    return (optBits & OPT_BIT_DISCONTINUITY) != 0;
  }

  private String formatRequiredAttributesMessage() {
    List<String> attributes = new ArrayList<String>();
    if ((initBits & INIT_BIT_DURATION) != 0) attributes.add("duration");
    if ((initBits & INIT_BIT_URI) != 0) attributes.add("uri");
    return "Cannot build MediaSegment, some of required attributes are not set " + attributes;
  }

  /**
   * Immutable implementation of {@link MediaSegment}.
   * <p>
   * Use the builder to create immutable instances:
   * {@code new MediaSegment.Builder()}.
   */
  private static final class ImmutableMediaSegment implements MediaSegment {
    private final double duration;
    private final String title;
    private final String uri;
    private final ByteRange byteRange;
    private final OffsetDateTime programDateTime;
    private final SegmentMap segmentMap;
    private final SegmentKey segmentKey;
    private final boolean discontinuity;

    private ImmutableMediaSegment(MediaSegmentBuilder builder) {
      this.duration = builder.duration;
      this.title = builder.title;
      this.uri = builder.uri;
      this.byteRange = builder.byteRange;
      this.programDateTime = builder.programDateTime;
      this.segmentMap = builder.segmentMap;
      this.segmentKey = builder.segmentKey;
      this.discontinuity = builder.discontinuityIsSet()
          ? builder.discontinuity
          : MediaSegment.super.discontinuity();
    }

    /**
     * @return The value of the {@code duration} attribute
     */
    @Override
    public double duration() {
      return duration;
    }

    /**
     * @return The value of the {@code title} attribute
     */
    @Override
    public Optional<String> title() {
      return Optional.ofNullable(title);
    }

    /**
     * @return The value of the {@code uri} attribute
     */
    @Override
    public String uri() {
      return uri;
    }

    /**
     * @return The value of the {@code byteRange} attribute
     */
    @Override
    public Optional<ByteRange> byteRange() {
      return Optional.ofNullable(byteRange);
    }

    /**
     * @return The value of the {@code programDateTime} attribute
     */
    @Override
    public Optional<OffsetDateTime> programDateTime() {
      return Optional.ofNullable(programDateTime);
    }

    /**
     * @return The value of the {@code segmentMap} attribute
     */
    @Override
    public Optional<SegmentMap> segmentMap() {
      return Optional.ofNullable(segmentMap);
    }

    /**
     * @return The value of the {@code segmentKey} attribute
     */
    @Override
    public Optional<SegmentKey> segmentKey() {
      return Optional.ofNullable(segmentKey);
    }

    /**
     * @return The value of the {@code discontinuity} attribute
     */
    @Override
    public boolean discontinuity() {
      return discontinuity;
    }

    /**
     * This instance is equal to all instances of {@code ImmutableMediaSegment} that have equal attribute values.
     * @return {@code true} if {@code this} is equal to {@code another} instance
     */
    @Override
    public boolean equals(Object another) {
      if (this == another) return true;
      return another instanceof MediaSegmentBuilder.ImmutableMediaSegment
          && equalTo((MediaSegmentBuilder.ImmutableMediaSegment) another);
    }

    private boolean equalTo(MediaSegmentBuilder.ImmutableMediaSegment another) {
      return Double.doubleToLongBits(duration) == Double.doubleToLongBits(another.duration)
          && Objects.equals(title, another.title)
          && uri.equals(another.uri)
          && Objects.equals(byteRange, another.byteRange)
          && Objects.equals(programDateTime, another.programDateTime)
          && Objects.equals(segmentMap, another.segmentMap)
          && Objects.equals(segmentKey, another.segmentKey)
          && discontinuity == another.discontinuity;
    }

    /**
     * Computes a hash code from attributes: {@code duration}, {@code title}, {@code uri}, {@code byteRange}, {@code programDateTime}, {@code segmentMap}, {@code segmentKey}, {@code discontinuity}.
     * @return hashCode value
     */
    @Override
    public int hashCode() {
      int h = 5381;
      h += (h << 5) + Double.hashCode(duration);
      h += (h << 5) + Objects.hashCode(title);
      h += (h << 5) + uri.hashCode();
      h += (h << 5) + Objects.hashCode(byteRange);
      h += (h << 5) + Objects.hashCode(programDateTime);
      h += (h << 5) + Objects.hashCode(segmentMap);
      h += (h << 5) + Objects.hashCode(segmentKey);
      h += (h << 5) + Boolean.hashCode(discontinuity);
      return h;
    }

    /**
     * Prints the immutable value {@code MediaSegment} with attribute values.
     * @return A string representation of the value
     */
    @Override
    public String toString() {
      StringBuilder builder = new StringBuilder("MediaSegment{");
      builder.append("duration=").append(duration);
      if (title != null) {
        builder.append(", ");
        builder.append("title=").append(title);
      }
      builder.append(", ");
      builder.append("uri=").append(uri);
      if (byteRange != null) {
        builder.append(", ");
        builder.append("byteRange=").append(byteRange);
      }
      if (programDateTime != null) {
        builder.append(", ");
        builder.append("programDateTime=").append(programDateTime);
      }
      if (segmentMap != null) {
        builder.append(", ");
        builder.append("segmentMap=").append(segmentMap);
      }
      if (segmentKey != null) {
        builder.append(", ");
        builder.append("segmentKey=").append(segmentKey);
      }
      builder.append(", ");
      builder.append("discontinuity=").append(discontinuity);
      return builder.append("}").toString();
    }
  }
}

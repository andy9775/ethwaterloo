import React, { Component } from 'react'
import { Rating, Card } from 'semantic-ui-react'

export default class RateSlider extends Component {
  state = { rating: 0 }

  handleChange = e => this.setState({ rating: e.target.value })

  render() {
    const { rating } = this.state

    return (
		<Card centered={true}>
		    <Card.Content>
		      <Card.Header>
		        { this.props.name }
		      </Card.Header>
		      <Card.Meta>
		        { this.props.address }
		      </Card.Meta>
		      <Card.Description>
		        <input type='range' min={0} max={10} value={rating} onChange={this.handleChange} />
				<br />
				Rating: {rating}
		        <Rating rating={this.state.rating} maxRating={10} disabled={true} hidden={true} />
		      </Card.Description>
		    </Card.Content>
		  </Card>
    )
  }
}

